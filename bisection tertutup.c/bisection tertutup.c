#include <stdio.h>
#include <math.h>

// Fungsi yang akan dicari akarnya
double f(double x) {
    return x * x * x - 4 * x - 9;
}

// Fungsi untuk melakukan metode biseksi
void bisection(double a, double b, double tol) {
    if (f(a) * f(b) >= 0) {
        printf("Tidak ada akar di interval [%.6f, %.6f].\n", a, b);
        return;
    }

    double c;
    int iterasi = 1;

    // Tabel iterasi
    printf("| Iterasi |      a      |    f(a)    |      b      |    f(b)    |      c      |    f(c)    |   b - a   |\n");
    printf("-----------------------------------------------------------------------------------------------------\n");

    while (1) {
        c = (a + b) / 2;
        printf("|   %2d    |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f | %9.6f |\n",
               iterasi, a, f(a), b, f(b), c, f(c), b - a);

        // Tentukan subinterval yang baru
        if (f(c) == 0.0 || (b - a) < tol) {
            break;
        } else if (f(c) * f(a) < 0) {
            b = c;
        } else {
            a = c;
        }

        iterasi++;
    }

    printf("-----------------------------------------------------------------------------------------------------\n");
    printf("Akar yang ditemukan di interval [%.6f, %.6f]: %.6f\n", a, b, c);
}

// Fungsi utama
int main() {
    int n; // Banyaknya interval
    double a, b, tol;

    // Meminta input dari pengguna
    printf("Masukkan jumlah interval yang ingin diperiksa: ");
    scanf("%d", &n);
    printf("Masukkan toleransi kesalahan: ");
    scanf("%lf", &tol);

    for (int i = 0; i < n; i++) {\

    
        printf("\nMasukkan interval ke-%d (a dan b):\n", i + 1);
        printf("a: ");
        scanf("%lf", &a);
        printf("b: ");
        scanf("%lf", &b);

        bisection(a, b, tol); // Menjalankan metode biseksi untuk interval yang dimasukkan
    }

    return 0;
}


