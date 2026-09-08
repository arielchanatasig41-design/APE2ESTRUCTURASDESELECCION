import java.util.Scanner;

public class SistemaCuentasBancarias {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int dni, cantidad;
        int[] numeroCuenta = new int[3];
        double[] saldo = new double[3];
        int cuenta, opcion, origen, destino;
        double monto;

        System.out.print("Ingrese el DNI del cliente: ");
        dni = sc.nextInt();

        System.out.print("¿Cuantas cuentas desea crear? (maximo 3): ");
        cantidad = sc.nextInt();

        while (cantidad < 1 || cantidad > 3) {
            System.out.print("Ingrese una cantidad entre 1 y 3: ");
            cantidad = sc.nextInt();
        }

        for (int i = 0; i < cantidad; i++) {
            System.out.print("Ingrese el numero de la cuenta " + (i + 1) + ": ");
            numeroCuenta[i] = sc.nextInt();

            System.out.print("Ingrese el saldo: ");
            saldo[i] = sc.nextDouble();
        }

        System.out.print("Seleccione una cuenta (1-" + cantidad + "): ");
        cuenta = sc.nextInt() - 1;

        do {
            System.out.println("\n===== MENU BANCARIO =====");
            System.out.println("1. Ver atributos");
            System.out.println("2. Enviar dinero");
            System.out.println("3. Recibir dinero");
            System.out.println("4. Transferir entre cuentas");
            System.out.println("5. Salir");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.println("Numero de cuenta: " + numeroCuenta[cuenta]);
                    System.out.println("Saldo: $" + saldo[cuenta]);
                    break;

                case 2:
                    System.out.print("Ingrese el monto a enviar: ");
                    monto = sc.nextDouble();

                    if (monto <= saldo[cuenta]) {
                        saldo[cuenta] -= monto;
                        System.out.println("Dinero enviado correctamente.");
                    } else {
                        System.out.println("Saldo insuficiente.");
                    }
                    break;

                case 3:
                    System.out.print("Ingrese el monto a recibir: ");
                    monto = sc.nextDouble();
                    saldo[cuenta] += monto;
                    System.out.println("Dinero recibido correctamente.");
                    break;

                case 4:
                    System.out.print("Cuenta de origen: ");
                    origen = sc.nextInt() - 1;

                    System.out.print("Cuenta de destino: ");
                    destino = sc.nextInt() - 1;

                    System.out.print("Ingrese el monto: ");
                    monto = sc.nextDouble();

                    if (saldo[origen] >= monto) {
                        saldo[origen] -= monto;
                        saldo[destino] += monto;
                        System.out.println("Transferencia realizada.");
                    } else {
                        System.out.println("Saldo insuficiente.");
                    }
                    break;

                case 5:
                    System.out.println("Saliendo del sistema...");
                    break;

                default:
                    System.out.println("Opcion incorrecta.");
            }
        } while (opcion != 5);

        sc.close();
    }
}
