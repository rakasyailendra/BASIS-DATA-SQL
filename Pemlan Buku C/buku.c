#include <stdio.h>
#include <stdlib.h>
#include <string.h>


typedef struct {
    char kode[10];    // Kode buku (unique)
    char judul[100];  // Judul buku
    char penulis[100]; // Nama penulis
    char penerbit[100]; // Nama penerbit
    int stock;        // Jumlah stok buku
} Buku;


void tambahBuku(Buku **buku, int *jumlahBuku) {
    *buku = (Buku *) realloc(*buku, (*jumlahBuku + 1) * sizeof(Buku));

    printf("Masukkan kode buku: ");
    fgets((*buku)[*jumlahBuku].kode, sizeof((*buku)[*jumlahBuku].kode), stdin);
    (*buku)[*jumlahBuku].kode[strcspn((*buku)[*jumlahBuku].kode, "\n")] = '\0';  

    printf("Masukkan judul buku: ");
    fgets((*buku)[*jumlahBuku].judul, sizeof((*buku)[*jumlahBuku].judul), stdin);
    (*buku)[*jumlahBuku].judul[strcspn((*buku)[*jumlahBuku].judul, "\n")] = '\0';

    printf("Masukkan nama penulis: ");
    fgets((*buku)[*jumlahBuku].penulis, sizeof((*buku)[*jumlahBuku].penulis), stdin);
    (*buku)[*jumlahBuku].penulis[strcspn((*buku)[*jumlahBuku].penulis, "\n")] = '\0';

    printf("Masukkan nama penerbit: ");
    fgets((*buku)[*jumlahBuku].penerbit, sizeof((*buku)[*jumlahBuku].penerbit), stdin);
    (*buku)[*jumlahBuku].penerbit[strcspn((*buku)[*jumlahBuku].penerbit, "\n")] = '\0';

    printf("Masukkan jumlah stok: ");
    scanf("%d", &(*buku)[*jumlahBuku].stock);
    getchar(); 

    (*jumlahBuku)++;
    printf("Buku berhasil ditambahkan!\n");
}


void ubahBuku(Buku *buku, int jumlahBuku) {
    char kode[10];
    printf("Masukkan kode buku yang ingin diubah: ");
    fgets(kode, sizeof(kode), stdin);
    kode[strcspn(kode, "\n")] = '\0';

    for (int i = 0; i < jumlahBuku; i++) {
        if (strcmp(buku[i].kode, kode) == 0) {
            printf("Masukkan judul buku baru: ");
            fgets(buku[i].judul, sizeof(buku[i].judul), stdin);
            buku[i].judul[strcspn(buku[i].judul, "\n")] = '\0';

            printf("Masukkan nama penulis baru: ");
            fgets(buku[i].penulis, sizeof(buku[i].penulis), stdin);
            buku[i].penulis[strcspn(buku[i].penulis, "\n")] = '\0';

            printf("Masukkan nama penerbit baru: ");
            fgets(buku[i].penerbit, sizeof(buku[i].penerbit), stdin);
            buku[i].penerbit[strcspn(buku[i].penerbit, "\n")] = '\0';

            printf("Masukkan jumlah stok baru: ");
            scanf("%d", &buku[i].stock);
            getchar();

            printf("Data buku berhasil diubah!\n");
            return;
        }
    }
    printf("Buku dengan kode %s tidak ditemukan!\n", kode);
}

// Fungsi untuk menghapus data buku
void hapusBuku(Buku **buku, int *jumlahBuku) {
    char kode[10];
    printf("Masukkan kode buku yang ingin dihapus: ");
    fgets(kode, sizeof(kode), stdin);
    kode[strcspn(kode, "\n")] = '\0';

    for (int i = 0; i < *jumlahBuku; i++) {
        if (strcmp((*buku)[i].kode, kode) == 0) {
            for (int j = i; j < *jumlahBuku - 1; j++) {
                (*buku)[j] = (*buku)[j + 1];
            }
            *buku = (Buku *) realloc(*buku, (*jumlahBuku - 1) * sizeof(Buku));
            (*jumlahBuku)--;

            printf("Buku berhasil dihapus!\n");
            return;
        }
    }
    printf("Buku dengan kode %s tidak ditemukan!\n", kode);
}


void tampilkanBuku(Buku *buku, int jumlahBuku) {
    if (jumlahBuku == 0) {
        printf("Tidak ada buku yang tersedia.\n");
        return;
    }

    printf("\nData Buku:\n");
    for (int i = 0; i < jumlahBuku; i++) {
        printf("Kode Buku: %s\n", buku[i].kode);
        printf("Judul Buku: %s\n", buku[i].judul);
        printf("Penulis: %s\n", buku[i].penulis);
        printf("Penerbit: %s\n", buku[i].penerbit);
        printf("Jumlah Stok: %d\n", buku[i].stock);
        printf("---------------------------\n");
    }
}


int main() {
    Buku *buku = NULL;
    int jumlahBuku = 0;
    int pilihan;

    do {
        printf("\n=== LIBRARY MENU ===\n");
        printf("1. Tambah Buku\n");
        printf("2. Ubah Buku\n");
        printf("3. Hapus Buku\n");
        printf("4. Tampilkan Data Buku\n");
        printf("5. Keluar\n");
        printf("Pilihan: ");
        scanf("%d", &pilihan);
        getchar(); 

        switch (pilihan) {
            case 1:
                tambahBuku(&buku, &jumlahBuku);
                break;
            case 2:
                ubahBuku(buku, jumlahBuku);
                break;
            case 3:
                hapusBuku(&buku, &jumlahBuku);
                break;
            case 4:
                tampilkanBuku(buku, jumlahBuku);
                break;
            case 5:
                printf("Keluar dari program.\n");
                break;
            default:
                printf("Pilihan tidak valid.\n");
        }
    } while (pilihan != 5);

    free(buku); 
    return 0;
}