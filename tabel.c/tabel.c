#include <stdio.h>
#include <math.h>

// Fungsi yang akan dicari akarnya
double f(double x)
{
    return x * x - 3 * x + 2;
}

// Fungsi untuk melakukan Metode Tabel
void tabel_method(double a, double b, double h)
{
    double x = a;
    double fx, fxh;

    // Header tabel
    printf("|    x    |   f(x)   |\n");
    printf("----------------------\n");

    while (x <= b)
    {
        fx = f(x);      // Hitung f(x) untuk titik saat ini
        fxh = f(x + h); // Hitung f(x+h) untuk titik berikutnya

        // Tampilkan nilai f(x) di setiap iterasi
        printf("| %7.4f | %8.4f |\n", x, fx);

        // Periksa apakah f(x) dan f(x+h) berlawanan tanda
        if (fx * fxh < 0)
        {
            printf("----------------------\n");
            printf("Akar ditemukan antara x = %.4f dan x = %.4f\n", x, x + h);

            // Tentukan titik mana yang lebih dekat dengan akar
            if (fabs(fx) < fabs(fxh))
            {
                printf("Akar lebih dekat ke x = %.4f\n", x);
            }
            else
            {
                printf("Akar lebih dekat ke x = %.4f\n", x + h);
            }
            return;
        }

        // Tingkatkan nilai x dengan langkah h
        x += h;
    }

    // Jika tidak ada akar yang ditemukan
    printf("----------------------\n");
    printf("Akar tidak ditemukan dalam interval yang diberikan.\n");
}

int main()
{
    // Interval awal [a, b]
    double a = -4.0, b = 2.0;
    // Langkah (step size)
    double h = 0.6;

    // Menjalankan metode tabel
    tabel_method(a, b, h);

    return 0;
}