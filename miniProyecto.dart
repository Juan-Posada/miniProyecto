import 'dart:io';

void main() {
  //Mini proyecto final trimestre II - Juan Posada

  //DEFINICIÓN DE VARIABLES
  int opcionMenuPrincipal,
      opcionMenuEstudiantes,
      opcionMenuTemas,
      opcionMezcla,
      opcionTipoApp;

  //PROCESOS

  do {
    //EMPIEZA DO WHILE 1
    print("");
    print("[BIENVENIDO A LA APP]");
    print("🏁" * 30);
    print("SELECCIÓN PARA SU TIPO DE APP");
    print("🏁" * 30);
    print("1. APP con temas y estudiantes predefinidos");
    print("2. APP sin base de temas y estudiantes");
    print("0. Salir");

    print("-" * 30);
    print("Digite la opción deseada");
    opcionTipoApp = int.parse(stdin.readLineSync()!);

    switch (opcionTipoApp) {
      //EMPIEZA SWITCH 1

      case 1: //CASO PREDEFINIDO
        do {
          //EMPIEZA DO WHILE 2
          print("");
          print("[ENTRANDO AL MENÚ]");
          print("🏁" * 30);
          print("MENÚ APP PRINCIPAL (LISTAS PREDEFINIDAS)");
          print("🏁" * 30);
          print("1. Entrar al menú estudiantes");
          print("2. Entrar al menú de exposicones");
          print("3. Mezclar grupos de trabajo");
          print("0. Salir");

          print("-" * 30);
          print("Digite la opción deseada");
          opcionMenuPrincipal = int.parse(stdin.readLineSync()!);

          //apertura tipo app

          switch (opcionMenuPrincipal) {
            //EMPIEZA SWITCH 2

            case 1:
              do {
                print("");
                print("🏁" * 30);
                print("MENÚ DE ESTUDIANTES");
                print("🏁" * 30);
                print("1. Modificar lista de estudiantes");
                print("2. Mostrar lista de estudiantes");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuEstudiantes = int.parse(stdin.readLineSync()!);

                switch (opcionMenuEstudiantes) {
                  case 1:
                    break;

                  case 2:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMenuEstudiantes != 0);
              break;

            case 2:
              do {
                print("");
                print("🏁" * 30);
                print("MENÚ EN TEMAS DE EXPOSICIÓN");
                print("🏁" * 30);
                print("1. Modificar lista de temas de exposición");
                print("2. Mostrar lista de temas de exposición");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuTemas = int.parse(stdin.readLineSync()!);

                switch (opcionMenuTemas) {
                  case 1:
                    break;

                  case 2:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMenuTemas != 0);
              break;

            case 3:
              do {
                print("");
                print("🏁" * 30);
                print("MENÚ PARA LA MEZCLA DE GRUPOS");
                print("🏁" * 30);
                print("1. Mezclar equipos de trabajo");
                print("2. Mostrar equipos de trabajo");
                print("0. Salir");
                print("-" * 30);
                print("Digite la opción deseada");
                opcionMezcla = int.parse(stdin.readLineSync()!);

                switch (opcionMezcla) {
                  case 1:
                    break;

                  case 2:
                    break;

                  case 3:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMezcla != 0);
              break;

            default:
              print("¡Hasta pronto, 🙌!");
              print("Acaba de regresar a seleccionar su tipo de app");
              break; //CIERRA SWITCH 2
          }
        } while (opcionMenuPrincipal != 0); //CIERRA DO WHILE 2
        break;

      case 2: //CASO SIN PREDEFINIDOS
        do {
          //EMPIEZA DO WHILE 2
          print("");
          print("[ENTRANDO AL MENÚ]");
          print("🏁" * 30);
          print("MENÚ APP PRINCIPAL (LISTAS VACÍAS)");
          print("🏁" * 30);
          print("1. Entrar al menú estudiantes");
          print("2. Entrar al menú de exposicones");
          print("3. Mezclar grupos de trabajo");
          print("0. Salir");

          print("-" * 30);
          print("Digite la opción deseada");
          opcionMenuPrincipal = int.parse(stdin.readLineSync()!);

          //apertura tipo app

          switch (opcionMenuPrincipal) {
            //EMPIEZA SWITCH 2

            case 1:
              do {
                print("");
                print("🏁" * 30);
                print("MENÚ CRUD DE ESTUDIANTES");
                print("🏁" * 30);
                print("1. Crear lista de estudiantes");
                print("2. Modificar lista de estudiantes");
                print("3. Mostrar lista de estudiantes");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuEstudiantes = int.parse(stdin.readLineSync()!);

                switch (opcionMenuEstudiantes) {
                  case 1:
                    break;

                  case 2:
                    break;

                  case 3:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMenuEstudiantes != 0);
              break;

            case 2:
              do {
                print("");
                print("🏁" * 30);
                print("MENU CRUD PARA TEMAS DE EXPOSICIÓN");
                print("🏁" * 30);
                print("1. Crear lista de temas de exposición");
                print("2. Modificar lista de temas de exposición");
                print("3. Mostrar lista de temas de exposición");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuTemas = int.parse(stdin.readLineSync()!);

                switch (opcionMenuTemas) {
                  case 1:
                    break;

                  case 2:
                    break;

                  case 3:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMenuTemas != 0);
              break;

            case 3:
              do {
                print("");
                print("🏁" * 30);
                print("MENU CRUD PARA LA MEZCLA DE GRUPOS");
                print("🏁" * 30);
                print("1. Mezclar equipos de trabajo");
                print("2. Mostrar equipos de trabajo");
                print("0. Salir");

                print("-" *30);
                print("Digite la opción deseada");
                opcionMezcla = int.parse(stdin.readLineSync()!);

                switch (opcionMezcla) {
                  case 1:
                    break;

                  case 2:
                    break;

                  case 3:
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal");
                    print("-" * 30);
                    break;
                }
              } while (opcionMezcla != 0);
              break;

            default:
              print("¡Hasta pronto, 🙌!");
              print("Acaba de regresar a seleccionar su tipo de app");
              break; //CIERRA SWITCH 2
          }
        } while (opcionMenuPrincipal != 0); //CIERRA DO WHILE 2
        break;

      default: //SALIR DE APP
        print("");
        print("SALIENDO DE LA APP, ¡Vuelve pronto!");
        break; //CIERRA SWITCH 1
    }
  } while (opcionTipoApp != 0); //CIERRA DO WHILE 1
}
