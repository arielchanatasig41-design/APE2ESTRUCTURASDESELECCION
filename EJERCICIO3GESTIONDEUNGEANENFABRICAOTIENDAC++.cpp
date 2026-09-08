#include <iostream>
#include <string>
using namespace std;

int main() {
    int codigo, talla, botones, tenidos, opcion;
    string color, fueTenido, estadoTela;
    double precio, humedad;

    cout << "===== REGISTRO DEL JEAN =====" << endl;

    cout << "Ingrese el codigo: ";
    cin >> codigo;
    cout << "Ingrese el color: ";
    cin >> color;
    cout << "Ingrese la talla: ";
    cin >> talla;
    cout << "¿El jean fue tenido? (SI/NO): ";
    cin >> fueTenido;
    cout << "Ingrese la cantidad de tenidos: ";
    cin >> tenidos;
    cout << "Ingrese el precio: ";
    cin >> precio;
    cout << "Ingrese la cantidad de botones: ";
    cin >> botones;
    cout << "Ingrese la humedad: ";
    cin >> humedad;
    cout << "Ingrese el estado de la tela: ";
    cin >> estadoTela;

    do {
        cout << "\n===== MENU =====" << endl;
        cout << "1. Mostrar datos" << endl;
        cout << "2. Lavar jean" << endl;
        cout << "3. Secar jean" << endl;
        cout << "4. Salir" << endl;
        cin >> opcion;

        switch (opcion) {
            case 1:
                cout << "Codigo: " << codigo << endl;
                cout << "Color: " << color << endl;
                cout << "Talla: " << talla << endl;
                cout << "Fue tenido: " << fueTenido << endl;
                cout << "Cantidad de tenidos: " << tenidos << endl;
                cout << "Precio: $" << precio << endl;
                cout << "Botones: " << botones << endl;
                cout << "Humedad: " << humedad << endl;
                cout << "Estado de la tela: " << estadoTela << endl;
                break;

            case 2:
                if (tenidos > 0) {
                    tenidos--;
                    cout << "El jean fue lavado." << endl;
                    cout << "Tenidos restantes: " << tenidos << endl;
                } else {
                    cout << "No se pueden disminuir mas los tenidos." << endl;
                }
                break;

            case 3:
                humedad -= 10;
                if (humedad < 0) humedad = 0;
                cout << "El jean fue secado." << endl;
                cout << "Humedad actual: " << humedad << endl;
                break;

            case 4:
                cout << "Saliendo del sistema..." << endl;
                break;

            default:
                cout << "Opcion incorrecta." << endl;
        }
    } while (opcion != 4);

    return 0;
}

