#include <stdio.h>

#define MAX 10
#define MAX_ITER 1000
#define EPSILON 1e-9

double absolute(double num) {
    return num < 0 ? -num : num;
}

void displayMatrix(double mat[MAX][MAX + 1], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("%10.4f ", mat[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

int gaussElimination(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    int iter = 0;

    for (int i = 0; i < n; i++) {
        printf("\nLangkah %d:\n", i + 1);

        int maxRow = i;
        for (int k = i + 1; k < n; k++) {
            if (absolute(mat[k][i]) > absolute(mat[maxRow][i])) {
                maxRow = k;
            }
        }

        if (absolute(mat[maxRow][i]) < EPSILON) {
            printf("Error: Matrix singular atau tidak memiliki solusi unik.\n");
            return -1;
        }

        if (maxRow != i) {
            for (int k = i; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[maxRow][k];
                mat[maxRow][k] = temp;
            }
        }

        for (int k = i + 1; k < n; k++) {
            double factor = mat[k][i] / mat[i][i];
            for (int j = i; j <= n; j++) {
                mat[k][j] -= factor * mat[i][j];
            }
            iter++;
            if (iter > MAX_ITER) {
                printf("Error: Iterasi melebihi batas maksimal.\n");
                return -1;
            }
        }

        displayMatrix(mat, n);
    }

    printf("\nMatriks setelah eliminasi gauss:\n");
    displayMatrix(mat, n);

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

    printf("\nMatriks sebelum eliminasi gauss:\n");
    displayMatrix(mat, n);

    if (gaussElimination(mat, sol, n) == 0) {
        printf("\nSolusi:\n");
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f\n", i, sol[i]);
        }
    } else {
        printf("Proses eliminasi gagal.\n");
    }

    return 0;
}
