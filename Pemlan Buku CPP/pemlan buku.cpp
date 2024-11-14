#include <iostream>
#include <string>

using namespace std;

const int MAX_BUKU = 100; 

class Buku {
public:
    string kode;      // Kode buku (unique)
    string judul;     // Judul buku
    string penulis;   // Nama penulis
    string penerbit;  // Nama penerbit
    int stock;        // Jumlah stok buku

    void inputData() {
        cout << "Masukkan kode buku: ";
        getline(cin, kode);
        
        cout << "Masukkan judul buku: ";
        getline(cin, judul);
        
        cout << "Masukkan nama penulis: ";
        getline(cin, penulis);
        
        cout << "Masukkan nama penerbit: ";
        getline(cin, penerbit);
        
        cout << "Masukkan jumlah stok: ";
        cin >> stock;
        cin.ignore(); 
    }

    void display() const {
        cout << "Kode Buku: " << kode << endl;
        cout << "Judul Buku: " << judul << endl;
        cout << "Penulis: " << penulis << endl;
        cout << "Penerbit: " << penerbit << endl;
        cout << "Jumlah Stok: " << stock << endl;
        cout << "---------------------------" << endl;
    }
};

void tambahBuku(Buku buku[], int &jumlahBuku) {
    if (jumlahBuku >= MAX_BUKU) {
        cout << "Stok buku sudah penuh!" << endl;
        return;
    }
    buku[jumlahBuku].inputData();
    jumlahBuku++;
    cout << "Buku berhasil ditambahkan!" << endl;
}

void ubahBuku(Buku buku[], int jumlahBuku, int index = 0) {
    if (index >= jumlahBuku) {
        cout << "Buku dengan kode tersebut tidak ditemukan!" << endl;
        return;
    }

    string kode;
    if (index == 0) {
        cout << "Masukkan kode buku yang ingin diubah: ";
        getline(cin, kode);
    }

    if (buku[index].kode == kode || index > 0) {
        cout << "Masukkan judul buku baru: ";
        getline(cin, buku[index].judul);
        
        cout << "Masukkan nama penulis baru: ";
        getline(cin, buku[index].penulis);
        
        cout << "Masukkan nama penerbit baru: ";
        getline(cin, buku[index].penerbit);
        
        cout << "Masukkan jumlah stok baru: ";
        cin >> buku[index].stock;
        cin.ignore();

        cout << "Data buku berhasil diubah!" << endl;
    } else {
        ubahBuku(buku, jumlahBuku, index + 1);
    }
}

void hapusBuku(Buku buku[], int &jumlahBuku, int index = 0) {
    if (index >= jumlahBuku) {
        cout << "Buku dengan kode tersebut tidak ditemukan!" << endl;
        return;
    }

    string kode;
    if (index == 0) {
        cout << "Masukkan kode buku yang ingin dihapus: ";
        getline(cin, kode);
    }

    if (buku[index].kode == kode || index > 0) {
        for (int j = index; j < jumlahBuku - 1; j++) {
            buku[j] = buku[j + 1]; // Menggeser buku
        }
        jumlahBuku--;
        cout << "Buku berhasil dihapus!" << endl;
    } else {
        hapusBuku(buku, jumlahBuku, index + 1);
    }
}

void tampilkanBuku(const Buku buku[], int jumlahBuku, int index = 0) {
    if (index >= jumlahBuku) {
        if (jumlahBuku == 0) {
            cout << "Tidak ada buku yang tersedia." << endl;
        }
        return;
    }

    buku[index].display();
    tampilkanBuku(buku, jumlahBuku, index + 1);
}

void cariBuku(const Buku buku[], int jumlahBuku) {
    string kode;
    cout << "Masukkan kode buku yang ingin dicari: ";
    getline(cin, kode);

    for (int i = 0; i < jumlahBuku; i++) {
        if (buku[i].kode == kode) {
            buku[i].display();
            return;
        }
    }
    cout << "Buku dengan kode tersebut tidak ditemukan!" << endl;
}

int main() {
    Buku buku[MAX_BUKU]; 
    int jumlahBuku = 0; 
    int pilihan;

    do {
        cout << "\n=== MENU PERPUSTAKAAN ===" << endl;
        cout << "1. Tambah Buku" << endl;
        cout << "2. Ubah Buku" << endl;
        cout << "3. Hapus Buku" << endl;
        cout << "4. Tampilkan Data Buku" << endl;
        cout << "5. Cari Buku" << endl;
        cout << "6. Keluar" << endl;
        cout << "Pilihan: ";
        cin >> pilihan;
        cin.ignore(); 

        switch (pilihan) {
            case 1:
                tambahBuku(buku, jumlahBuku);
                break;
            case 2:
                ubahBuku(buku, jumlahBuku);
                break;
            case 3:
                hapusBuku(buku, jumlahBuku);
                break;
            case 4:
                tampilkanBuku(buku, jumlahBuku);
                break;
            case 5:
                cariBuku(buku, jumlahBuku);
                break;
            case 6:
                cout << "Keluar dari program." << endl;
                break;
            default:
                cout << "Pilihan tidak valid. Silakan coba lagi." << endl;
        }
    } while (pilihan != 6);

    return 0;
}
