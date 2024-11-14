#include <stdio.h>
#include <math.h>

double t_statistic(double sample_mean, double hypothesized_mean, double std_dev, int n) {
    return (sample_mean - hypothesized_mean) / (std_dev / sqrt(n));
}

int main() {
    double hypothesized_mean, sample_mean, std_dev, significance_level;
    int n;

   
    printf("Masukkan mean hipotesis: ");
    scanf("%lf", &hypothesized_mean);
    printf("Masukkan mean sampel: ");
    scanf("%lf", &sample_mean);
    printf("Masukkan standar deviasi sampel: ");
    scanf("%lf", &std_dev);
    printf("Masukkan ukuran sampel: ");
    scanf("%d", &n);
    printf("Masukkan tingkat signifikansi (misalnya 0.05 untuk 5%%): ");
    scanf("%lf", &significance_level);

   
    double t_stat = t_statistic(sample_mean, hypothesized_mean, std_dev, n);

 
    printf("t-Statistic: %.2f\n", t_stat);
    printf("Periksa tabel distribusi t untuk menemukan p-value dan bandingkan dengan tingkat signifikansi.\n");

    return 0;
}

