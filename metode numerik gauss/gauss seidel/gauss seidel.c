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

// Fungsi Gauss-Seidel untuk mencari solusi
int gaussSeidel(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    double oldSol[MAX];
    int iter = 0;

    // Inisialisasi solusi awal
    for (int i = 0; i < n; i++) {
        sol[i] = 0.0;
    }

    // Iterasi Gauss-Seidel
    printf("\nMatriks sebelum iterasi:\n");
    displayMatrix(mat, n);

    for (iter = 1; iter <= MAX_ITER; iter++) {
        int converged = 1;

        for (int i = 0; i < n; i++) {
            oldSol[i] = sol[i];
            double sum = mat[i][n];

            for (int j = 0; j < n; j++) {
                if (i != j) {
                    sum -= mat[i][j] * sol[j];
                }
            }

            sol[i] = sum / mat[i][i];

            // Mengecek apakah sudah konvergen
            if (converged && fabs(sol[i] - oldSol[i]) > EPSILON) {
                converged = 0;
            }
        }

        // Menampilkan solusi sementara pada setiap iterasi
        printf("Iterasi %d: ", iter);
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f ", i, sol[i]);
        }
        printf("\n");

        // Jika sudah konvergen
        if (converged) {
            printf("\nSolusi konvergen tercapai setelah %d iterasi.\n", iter);
            return 0;
        }
    }

    // Jika iterasi maksimum tercapai tanpa konvergensi
    printf("Error: Iterasi melebihi batas maksimal.\n");
    return -1;
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

    printf("\nMatriks sebelum eliminasi:\n");
    displayMatrix(mat, n);

    // Melakukan iterasi Gauss-Seidel
    if (gaussSeidel(mat, sol, n) == 0) {
        printf("\nSolusi akhir:\n");
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f\n", i, sol[i]);
        }
    } else {
        printf("Proses iterasi gagal.\n");
    }

    return 0;
}
