#include <stdio.h>
#include <math.h>

// Fungsi yang akan dicari akarnya
double f(double x)
{
    return x * x - 6 * x + 8;
}

// Fungsi untuk melakukan metode biseksi
void bisection(double a, double b, double tol)
{
    if (f(a) * f(b) >= 0)
    {
        printf("Tidak ada akar di interval tersebut.\n");
        return;
    }

    double c;
    int iterasi = 1;

    // Header tabel
    printf("| Iterasi |      a      |    f(a)    |      b      |    f(b)    |      c      |    f(c)    |   b - a   |\n");
    printf("-----------------------------------------------------------------------------------------------------\n");

    while (1)
    {
        // Mencari titik tengah
        c = (a + b) / 2;

        // Mencetak hasil per iterasi, termasuk nilai b-a
        printf("|   %2d    |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f | %9.6f |\n",
               iterasi, a, f(a), b, f(b), c, f(c), b - a);

        // Tentukan subinterval yang baru
        if (f(c) * f(a) < 0)
        {
            b = c;
        }
        else
        {
            a = c;
        }

        // Jika selisih b-a sudah kurang dari toleransi, tampilkan iterasi ini
        if (b - a < tol)
        {
            // Tampilkan iterasi terakhir di mana b-a sudah kurang dari toleransi
            c = (a + b) / 2;
            printf("|   %2d    |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f |  %9.6f | %9.6f |\n",
                   iterasi + 1, a, f(a), b, f(b), c, f(c), b - a);
            break;
        }

        iterasi++;
    }

    printf("-----------------------------------------------------------------------------------------------------\n");
    printf("Akar yang ditemukan: %9.6f\n", c);
}

int main()
{
    // Interval awal [a, b]
    double a = 3, b = 6;
    // Toleransi kesalahan
    double tol = 0.0005;

    // Menjalankan metode biseksi
    bisection(a, b, tol);

    return 0;
}