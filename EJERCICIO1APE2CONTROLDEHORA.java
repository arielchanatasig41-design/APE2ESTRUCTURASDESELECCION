import java.util.Scanner;

public class ControlDeHora {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int hora, minutos, segundos, opcion;

        System.out.print("Ingrese la hora: ");
        hora = sc.nextInt();
        System.out.print("Ingrese los minutos: ");
        minutos = sc.nextInt();
        System.out.print("Ingrese los segundos: ");
        segundos = sc.nextInt();

        do {
            System.out.println("\nHora registrada: "
                    + hora + ":" + minutos + ":" + segundos);

            System.out.println("¿Desea cambiar la hora?");
            System.out.println("1. Si");
            System.out.println("2. No");
            opcion = sc.nextInt();

            if (opcion == 1) {
                System.out.print("Ingrese la nueva hora: ");
                hora = sc.nextInt();
                System.out.print("Ingrese los nuevos minutos: ");
                minutos = sc.nextInt();
                System.out.print("Ingrese los nuevos segundos: ");
                segundos = sc.nextInt();
            }
        } while (opcion != 2);

        System.out.println("Programa finalizado.");
        sc.close();
    }
}
