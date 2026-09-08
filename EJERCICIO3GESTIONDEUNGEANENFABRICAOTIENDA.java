import java.util.Scanner;

public class GestionJean {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int codigo, talla, botones, tenidos, opcion;
        String color, fueTenido, estadoTela;
        double precio, humedad;

        System.out.println("===== REGISTRO DEL JEAN =====");

        System.out.print("Ingrese el codigo: ");
        codigo = sc.nextInt();
        System.out.print("Ingrese el color: ");
        color = sc.next();
        System.out.print("Ingrese la talla: ");
        talla = sc.nextInt();
        System.out.print("¿El jean fue tenido? (SI/NO): ");
        fueTenido = sc.next();
        System.out.print("Ingrese la cantidad de tenidos: ");
        tenidos = sc.nextInt();
        System.out.print("Ingrese el precio: ");
        precio = sc.nextDouble();
        System.out.print("Ingrese la cantidad de botones: ");
        botones = sc.nextInt();
        System.out.print("Ingrese la humedad: ");
        humedad = sc.nextDouble();
        System.out.print("Ingrese el estado de la tela: ");
        estadoTela = sc.next();

        do {
            System.out.println("\n===== MENU =====");
            System.out.println("1. Mostrar datos");
            System.out.println("2. Lavar jean");
            System.out.println("3. Secar jean");
            System.out.println("4. Salir");
            opcion = sc.nextInt();

            switch (opcion) {
                case 1:
                    System.out.println("Codigo: " + codigo);
                    System.out.println("Color: " + color);
                    System.out.println("Talla: " + talla);
                    System.out.println("Fue tenido: " + fueTenido);
                    System.out.println("Cantidad de tenidos: " + tenidos);
                    System.out.println("Precio: $" + precio);
                    System.out.println("Botones: " + botones);
                    System.out.println("Humedad: " + humedad);
                    System.out.println("Estado de la tela: " + estadoTela);
                    break;

                case 2:
                    if (tenidos > 0) {
                        tenidos--;
                        System.out.println("El jean fue lavado.");
                        System.out.println("Tenidos restantes: " + tenidos);
                    } else {
                        System.out.println("No se pueden disminuir mas los tenidos.");
                    }
                    break;

                case 3:
                    humedad -= 10;
                    if (humedad < 0) humedad = 0;
                    System.out.println("El jean fue secado.");
                    System.out.println("Humedad actual: " + humedad);
                    break;

                case 4:
                    System.out.println("Saliendo del sistema...");
                    break;

                default:
                    System.out.println("Opcion incorrecta.");
            }
        } while (opcion != 4);

        sc.close();
    }
}
