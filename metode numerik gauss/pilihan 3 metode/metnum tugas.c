#include <stdio.h>

#define MAX 10
#define MAX_ITER 1000
#define EPSILON 1e-9

void displayMatrix(double mat[MAX][MAX + 1], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j <= n; j++) {
            printf("%10.4f ", mat[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

double absolute(double x) {
    return (x < 0) ? -x : x;
}

int gaussElimination(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    for (int i = 0; i < n; i++) {
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
            for (int k = 0; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[maxRow][k];
                mat[maxRow][k] = temp;
            }
        }
        for (int k = i + 1; k < n; k++) {
            double factor = mat[k][i] / mat[i][i];
            for (int j = 0; j <= n; j++) {
                mat[k][j] -= factor * mat[i][j];
            }
        }
    }
    for (int i = n - 1; i >= 0; i--) {
        sol[i] = mat[i][n];
        for (int j = i + 1; j < n; j++) {
            sol[i] -= mat[i][j] * sol[j];
        }
        sol[i] /= mat[i][i];
    }
    return 0;
}

int gaussJordan(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    for (int i = 0; i < n; i++) {
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
            for (int k = 0; k <= n; k++) {
                double temp = mat[i][k];
                mat[i][k] = mat[maxRow][k];
                mat[maxRow][k] = temp;
            }
        }
        double pivot = mat[i][i];
        for (int j = 0; j <= n; j++) {
            mat[i][j] /= pivot;
        }
        for (int k = 0; k < n; k++) {
            if (k != i) {
                double factor = mat[k][i];
                for (int j = 0; j <= n; j++) {
                    mat[k][j] -= factor * mat[i][j];
                }
            }
        }
    }
    for (int i = 0; i < n; i++) {
        sol[i] = mat[i][n];
    }
    return 0;
}

int gaussSeidel(double mat[MAX][MAX + 1], double sol[MAX], int n) {
    double oldSol[MAX];
    int iter = 0;
    for (int i = 0; i < n; i++) {
        sol[i] = 0.0;
    }
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
            if (converged && absolute(sol[i] - oldSol[i]) > EPSILON) {
                converged = 0;
            }
        }
        printf("Iterasi %d: ", iter);
        for (int i = 0; i < n; i++) {
            printf("x[%d] = %10.4f ", i, sol[i]);
        }
        printf("\n");
        if (converged) {
            printf("\nSolusi konvergen tercapai setelah %d iterasi.\n", iter);
            return 0;
        }
    }
    printf("Error: Iterasi melebihi batas maksimal.\n");
    return -1;
}

int main() {
    int n;
    double mat[MAX][MAX + 1], sol[MAX];
    char choice;

    printf("\nPilih metode yang ingin digunakan:\n");
    printf("A. Gauss Elimination\n");
    printf("B. Gauss-Jordan\n");
    printf("C. Gauss-Seidel\n");
    printf("Pilihan Anda (A/B/C): ");
    choice = getchar();

    printf("Metode yang dipilih: %c\n", choice);

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

    switch (choice) {
        case 'A':
            if (gaussElimination(mat, sol, n) == 0) {
                printf("\nSolusi menggunakan Gauss Elimination:\n");
                for (int i = 0; i < n; i++) {
                    printf("x[%d] = %10.4f\n", i, sol[i]);
                }
            } else {
                printf("Proses Gauss Elimination gagal.\n");
            }
            break;
        case 'B':
            if (gaussJordan(mat, sol, n) == 0) {
                printf("\nSolusi menggunakan Gauss-Jordan:\n");
                for (int i = 0; i < n; i++) {
                    printf("x[%d] = %10.4f\n", i, sol[i]);
                }
            } else {
                printf("Proses Gauss-Jordan gagal.\n");
            }
            break;
        case 'C':
            if (gaussSeidel(mat, sol, n) == 0) {
                printf("\nSolusi menggunakan Gauss-Seidel:\n");
                for (int i = 0; i < n; i++) {
                    printf("x[%d] = %10.4f\n", i, sol[i]);
                }
            } else {
                printf("Proses Gauss-Seidel gagal.\n");
            }
            break;
        default:
            printf("Pilihan tidak valid.\n");
            break;
    }

    return 0;
}
