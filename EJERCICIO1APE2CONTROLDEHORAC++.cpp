#include <iostream>
using namespace std;

int main() {
    int hora, minutos, segundos, opcion;

    cout << "Ingrese la hora: ";
    cin >> hora;
    cout << "Ingrese los minutos: ";
    cin >> minutos;
    cout << "Ingrese los segundos: ";
    cin >> segundos;

    do {
        cout << "\nHora registrada: "
             << hora << ":" << minutos << ":" << segundos << endl;

        cout << "¿Desea cambiar la hora?" << endl;
        cout << "1. Si" << endl;
        cout << "2. No" << endl;
        cin >> opcion;

        if (opcion == 1) {
            cout << "Ingrese la nueva hora: ";
            cin >> hora;
            cout << "Ingrese los nuevos minutos: ";
            cin >> minutos;
            cout << "Ingrese los nuevos segundos: ";
            cin >> segundos;
        }
    } while (opcion != 2);

    cout << "Programa finalizado." << endl;
    return 0;
}
