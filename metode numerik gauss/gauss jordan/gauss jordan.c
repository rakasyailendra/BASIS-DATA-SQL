#include <stdio.h>

#define MAX 10
#define MAX_ITER 1000
#define EPSILON 1e-9  // Toleransi untuk angka sangat kecil dianggap nol

// Fungsi untuk menampilkan matriks augmented
void displayMatrix(double mat[MAX][MAX + 1], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("%10.4f ", mat[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

// Fungsi untuk melakukan eliminasi Gauss-Jordan
int gaussJordan(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    int iter = 0;

    for (int i = 0; i < n; i++) {
        // Mencari baris dengan elemen utama terbesar untuk pivot
        int maxRow = i;
        for (int k = i + 1; k < n; k++) {
            if (fabs(mat[k][i]) > fabs(mat[maxRow][i])) {
                maxRow = k;
            }
        }

        // Jika elemen diagonal adalah nol, mungkin solusi tidak ada atau infinite
        if (fabs(mat[maxRow][i]) < EPSILON) {
            printf("Error: Matrix singular atau tidak memiliki solusi unik.\n");
            return -1;
        }

        // Menukar baris
        if (maxRow != i) {
            for (int k = 0; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[maxRow][k];
                mat[maxRow][k] = temp;
            }
        }

        // Normalisasi baris i sehingga elemen diagonal menjadi 1
        double pivot = mat[i][i];
        for (int j = 0; j <= n; j++) {
            mat[i][j] /= pivot;
        }

        // Mengurangi elemen pada kolom i untuk baris lain agar menjadi nol
        for (int k = 0; k < n; k++) {
            if (k != i) {
                double factor = mat[k][i];
                for (int j = 0; j <= n; j++) {
                    mat[k][j] -= factor * mat[i][j];
                }
            }
            iter++;
            if (iter > MAX_ITER) {
                printf("Error: Iterasi melebihi batas maksimal.\n");
                return -1;
            }
        }
    }

    // Mengisi solusi berdasarkan kolom terakhir
    for (int i = 0; i < n; i++) {
        sol[i] = mat[i][n];
    }

    return 0;  // Sukses
}

int main() {
    int n;
    double mat[MAX][MAX + 1], sol[MAX];

    printf("Masukkan ukuran matriks (n x n): ");
    scanf("%d", &n);

    if (n <= 0 || n > MAX) {
        printf("Error: Ukuran matriks tidak valid.\n");
        return -1;
    }

    printf("Masukkan elemen matriks augmented:\n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("mat[%d][%d]: ", i, j);
            scanf("%lf", &mat[i][j]);
        }
    }

    printf("\nMatriks sebelum eliminasi Gauss-Jordan:\n");
    displayMatrix(mat, n);

    // Lakukan eliminasi Gauss-Jordan
    if (gaussJordan(mat, sol, n) == 0) {
        printf("\nSolusi:\n");
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f\n", i, sol[i]);
        }
    } else {
        printf("Proses eliminasi gagal.\n");
    }

    return 0;
}
