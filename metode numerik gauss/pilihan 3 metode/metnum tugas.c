#include <stdio.h>

#define MAX 10
#define MAX_ITER 1000
#define EPSILON 1e-9

// Fungsi untuk menghitung nilai absolut (tanpa math.h)
double absolut(double x) {
    if (x < 0) {
        return -x;
    }
    return x;
}

// Fungsi untuk menampilkan matriks augmented
void tampilkanMatriks(double mat[MAX][MAX + 1], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("%10.4f ", mat[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

// Fungsi untuk metode Eliminasi Gauss
int eliminasiGauss(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    int iter = 0;

    for (int i = 0; i < n; i++) {
        printf("\nLangkah %d:\n", i + 1);

        int barisMaks = i;
        for (int k = i + 1; k < n; k++) {
            if (absolut(mat[k][i]) > absolut(mat[barisMaks][i])) {
                barisMaks = k;
            }
        }

        if (absolut(mat[barisMaks][i]) < EPSILON) {
            printf("Error: Matriks singular atau tidak memiliki solusi unik.\n");
            return -1;
        }

        if (barisMaks != i) {
            for (int k = i; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[barisMaks][k];
                mat[barisMaks][k] = temp;
            }
        }

        for (int k = i + 1; k < n; k++) {
            double faktor = mat[k][i] / mat[i][i];
            for (int j = i; j <= n; j++) {
                mat[k][j] -= faktor * mat[i][j];
            }
            iter++;
            if (iter > MAX_ITER) {
                printf("Error: Iterasi melebihi batas maksimal.\n");
                return -1;
            }
        }

        tampilkanMatriks(mat, n);
    }

    printf("\nMatriks setelah Eliminasi Gauss:\n");
    tampilkanMatriks(mat, n);

    for (int i = n - 1; i >= 0; i--) {
        sol[i] = mat[i][n] / mat[i][i];
        for (int j = i - 1; j >= 0; j--) {
            mat[j][n] -= mat[j][i] * sol[i];
            iter++;
            if (iter > MAX_ITER) {
                printf("Error: Iterasi melebihi batas maksimal.\n");
                return -1;
            }
        }
    }

    return 0;
}

// Fungsi untuk metode Gauss-Jordan
int gaussJordan(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    int iter = 0;

    for (int i = 0; i < n; i++) {
        printf("\nLangkah %d:\n", i + 1);

        int barisMaks = i;
        for (int k = i + 1; k < n; k++) {
            if (absolut(mat[k][i]) > absolut(mat[barisMaks][i])) {
                barisMaks = k;
            }
        }

        if (absolut(mat[barisMaks][i]) < EPSILON) {
            printf("Error: Matriks singular atau tidak memiliki solusi unik.\n");
            return -1;
        }

        if (barisMaks != i) {
            for (int k = 0; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[barisMaks][k];
                mat[barisMaks][k] = temp;
            }
        }

        double pivot = mat[i][i];
        for (int j = 0; j <= n; j++) {
            mat[i][j] /= pivot;
        }

        for (int k = 0; k < n; k++) {
            if (k != i) {
                double faktor = mat[k][i];
                for (int j = 0; j <= n; j++) {
                    mat[k][j] -= faktor * mat[i][j];
                }
            }
            iter++;
            if (iter > MAX_ITER) {
                printf("Error: Iterasi melebihi batas maksimal.\n");
                return -1;
            }
        }

        tampilkanMatriks(mat, n);
    }

    printf("\nMatriks setelah Gauss-Jordan:\n");
    tampilkanMatriks(mat, n);

    for (int i = 0; i < n; i++) {
        sol[i] = mat[i][n];
    }

    return 0;
}

// Fungsi untuk metode Gauss-Seidel
int gaussSeidel(double mat[MAX][MAX + 1], double sol[MAX], int n, double toleransi) {
    double solLama[MAX];
    int iter = 0;

    printf("\nMasukkan tebakan awal untuk solusi:\n");
    for (int i = 0; i < n; i++) {
        printf("x[%d]: ", i);
        scanf("%lf", &sol[i]);
    }

    printf("\nTebakan awal solusi:\n");
    for (int i = 0; i < n; i++) {
        printf("x[%d] = %10.4f ", i, sol[i]);
    }
    printf("\n");

    printf("\nMatriks sebelum iterasi:\n");
    tampilkanMatriks(mat, n);

    for (iter = 1; iter <= MAX_ITER; iter++) {
        int konvergen = 1;

        for (int i = 0; i < n; i++) {
            solLama[i] = sol[i];
        }

        for (int i = 0; i < n; i++) {
            double jumlah = mat[i][n];

            for (int j = 0; j < n; j++) {
                if (i != j) {
                    jumlah -= mat[i][j] * sol[j];
                }
            }

            sol[i] = jumlah / mat[i][i];

            if (konvergen && (absolut(sol[i] - solLama[i]) > toleransi)) {
                konvergen = 0;
            }
        }

        printf("Iterasi %d: ", iter);
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f ", i, sol[i]);
        }
        printf("\n");

        if (konvergen) {
            printf("\nSolusi konvergen tercapai setelah %d iterasi.\n", iter);
            return 0;
        }
    }

    printf("Error: Iterasi melebihi batas maksimal.\n");
    return -1;
}

int main() {
    int n, metode;
    double mat[MAX][MAX + 1], sol[MAX];
    double toleransi;

    // Pengguna memilih metode
    printf("Pilih metode yang ingin digunakan:\n");
    printf("1. Eliminasi Gauss\n");
    printf("2. Gauss-Jordan\n");
    printf("3. Gauss-Seidel\n");
    printf("Masukkan pilihan (1, 2, atau 3): ");
    scanf("%d", &metode);

    printf("Masukkan ukuran matriks (n x n): ");
    scanf("%d", &n);

    if (n <= 0 || n > MAX) {
        printf("Error: Ukuran matriks tidak valid.\n");
        return -1;
    }

    printf("Masukkan elemen-elemen matriks augmented:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("mat[%d][%d]: ", i, j);
            scanf("%lf", &mat[i][j]);
        }
    }

    printf("\nMatriks augmented (A|B):\n");
    tampilkanMatriks(mat, n);

    if (metode == 1) {
        if (eliminasiGauss(mat, sol, n) == 0) {
            printf("\nSolusi:\n");
            for (int i = 0; i < n; i++) {
                printf("x[%d] = %10.4f\n", i, sol[i]);
            }
        } else {
            printf("Eliminasi Gauss gagal.\n");
        }
    } else if (metode == 2) {
        if (gaussJordan(mat, sol, n) == 0) {
            printf("\nSolusi:\n");
            for (int i = 0; i < n; i++) {
                printf("x[%d] = %10.4f\n", i, sol[i]);
            }
        } else {
            printf("Gauss-Jordan gagal.\n");
        }
    } else if (metode == 3) {
        printf("Masukkan toleransi error untuk Gauss-Seidel: ");
        scanf("%lf", &toleransi);
        if (gaussSeidel(mat, sol, n, toleransi) == 0) {
            printf("\nSolusi:\n");
            for (int i = 0; i < n; i++) {
                printf("x[%d] = %10.4f\n", i, sol[i]);
            }
        } else {
            printf("Gauss-Seidel gagal.\n");
        }
    } else {
        printf("Pilihan metode tidak valid.\n");
    }

    return 0;
}