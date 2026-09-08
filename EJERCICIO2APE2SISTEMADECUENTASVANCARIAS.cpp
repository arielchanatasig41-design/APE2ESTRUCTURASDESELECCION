#include <iostream>
using namespace std;

int main() {
    int dni, cantidad, numeroCuenta[3];
    double saldo[3];
    int cuenta, opcion, origen, destino;
    double monto;

    cout << "Ingrese el DNI del cliente: ";
    cin >> dni;

    cout << "¿Cuantas cuentas desea crear? (maximo 3): ";
    cin >> cantidad;

    while (cantidad < 1 || cantidad > 3) {
        cout << "Cantidad no valida. Ingrese entre 1 y 3: ";
        cin >> cantidad;
    }

    for (int i = 0; i < cantidad; i++) {
        cout << "Ingrese el numero de la cuenta " << i + 1 << ": ";
        cin >> numeroCuenta[i];
        cout << "Ingrese el saldo: ";
        cin >> saldo[i];
    }

    cout << "Seleccione una cuenta (1-" << cantidad << "): ";
    cin >> cuenta;
    cuenta--;

    do {
        cout << "\n===== MENU BANCARIO =====" << endl;
        cout << "1. Ver atributos" << endl;
        cout << "2. Enviar dinero" << endl;
        cout << "3. Recibir dinero" << endl;
        cout << "4. Transferir entre cuentas" << endl;
        cout << "5. Salir" << endl;
        cin >> opcion;

        switch (opcion) {
            case 1:
                cout << "Numero de cuenta: " << numeroCuenta[cuenta] << endl;
                cout << "Saldo: $" << saldo[cuenta] << endl;
                break;

            case 2:
                cout << "Ingrese el monto a enviar: ";
                cin >> monto;
                if (monto <= saldo[cuenta]) {
                    saldo[cuenta] -= monto;
                    cout << "Dinero enviado correctamente." << endl;
                } else {
                    cout << "Saldo insuficiente." << endl;
                }
                break;

            case 3:
                cout << "Ingrese el monto a recibir: ";
                cin >> monto;
                saldo[cuenta] += monto;
                cout << "Dinero recibido correctamente." << endl;
                break;

            case 4:
                cout << "Cuenta de origen (1-" << cantidad << "): ";
                cin >> origen;
                cout << "Cuenta de destino (1-" << cantidad << "): ";
                cin >> destino;
                cout << "Ingrese el monto: ";
                cin >> monto;

                origen--;
                destino--;

                if (saldo[origen] >= monto) {
                    saldo[origen] -= monto;
                    saldo[destino] += monto;
                    cout << "Transferencia realizada." << endl;
                } else {
                    cout << "Saldo insuficiente." << endl;
                }
                break;

            case 5:
                cout << "Saliendo del sistema..." << endl;
                break;

            default:
                cout << "Opcion incorrecta." << endl;
        }
    } while (opcion != 5);

    return 0;
}
