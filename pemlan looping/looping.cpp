#include <iostream>

using namespace std;

void rekursif(int n)
{
    if (n <= 10)
    { 
        cout <<"nilai n nya lanjut ke
        = " << n << endl;
        rekursif (n+1);
    
    }

}
 int main ()
 {

rekursif (1);

return 0;

 }