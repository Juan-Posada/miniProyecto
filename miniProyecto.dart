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

        List<String> listaEstudiantesCaso1 = [
          "Andres Felipe Sánchez Hurtado",
          "Angie Dahiana Rios Quintero",
          "Cristian Alvarez Aranzazu",
          "Daniel Estiven Arboleda Duque",
          "David Andres Morales Guapacha",
          "David Stiven Ocampo Londoño",
          "Esteban Reyes Agudelo",
          "Jacobo Galvis Jimenez",
          "Jaime Andres Calle Salazar",
          "Jeferson Mauricio Hernandez Ladino",
          "Jhon Alexander Pineda Osorio",
          "Jose Miguel Sierra Aristizabal",
          "Jose Sebastián Ocampo López",
          "Juan Andres Osorio Gomez",
          "Juan Diego Calvo Osorio",
          "Juan Esteban Lopez Calle",
          "Juan Pablo Rios Aristizabal",
          "Maria Paula Melo Solano",
          "Miguel Angel Peña Jimenez",
          "Samuel Castaño Cardona",
          "Juan Jose Posada Perez",
          "Alejandro Serna Londoño",
          "Juan Manuel Zuluaga Rincon",
          "Juan Daniel Gomez Laserna",
          "Yerson Stiven Herrera Obando",
          "Mateo Herrera Vargas",
          "Alejandro Vallejo Escobar"
        ];

        List<String> listaTemasCaso1 = [
          "Programación orientada a objetos",
          "Diferencia entre programación orientada a objetos y programación estructurada",
          "Objeto, clase y sus diferencias",
          "Abstracción",
          "Encapsulamiento",
          "Herencia",
          "Polimorfismo",
          "Diagramas de UML"
        ];

        int menuModificarEstudiantesCaso1,
            menuModificarTemasCaso1,
            posicionABuscarEstudiantes,
            posicionABuscarTemas;

        String? nuevoNombre, nuevoTema, edicionNombre, edicionTema;

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
                    do {
                      print("");
                      print("🏁" * 30);
                      print("MENÚ DE EDICIÓN (ESTUDIANTES)");
                      print("🏁" * 30);
                      print("1. Añadir estudiante");
                      print("2. Modificar estudiante");
                      print("3. Eliminar estudiante");
                      print("0. Salir");

                      print("-" * 30);
                      print("Digite la opción deseada");
                      menuModificarEstudiantesCaso1 =
                          int.parse(stdin.readLineSync()!);

                      switch (menuModificarEstudiantesCaso1) {
                        case 1:
                          print("");
                          print(
                              "Escriba el nombre del estudiante que desea añadir a la lista");
                          nuevoNombre = stdin.readLineSync()!;
                          listaEstudiantesCaso1.add(nuevoNombre);
                          break;

                        case 2:
                          print("");
                          print("Inserte la posición del estudiante a editar:");
                          posicionABuscarEstudiantes =
                              int.parse(stdin.readLineSync()!);

                          print("");
                          print("Escriba la edición del estudiante:");
                          edicionNombre = stdin.readLineSync()!;

                          listaEstudiantesCaso1.insert(
                              posicionABuscarEstudiantes, edicionNombre);

                          print("-" * 30);
                          print("¡Estudiante editado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0;
                              i < listaEstudiantesCaso1.length;
                              i++) {
                            stdout.write("$i. ");
                            print(listaEstudiantesCaso1[i]);
                          }
                          break;

                        case 3:
                          print("");
                          print(
                              "Inserte la posición del estudiante a eliminar:");
                          posicionABuscarEstudiantes =
                              int.parse(stdin.readLineSync()!);
                          listaEstudiantesCaso1
                              .removeAt(posicionABuscarEstudiantes);

                          print("-" * 30);
                          print("¡Estudiante eliminado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0;
                              i < listaEstudiantesCaso1.length;
                              i++) {
                            stdout.write("$i. ");
                            print(listaEstudiantesCaso1[i]);
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarEstudiantesCaso1 != 0);
                    break;

                  case 2:
                    print("");
                    print("LISTA DE ESTUDIANTES");
                    print("-" * 30);
                    for (int i = 0; i < listaEstudiantesCaso1.length; i++) {
                      stdout.write("$i. ");
                      print(listaEstudiantesCaso1[i]);
                    }
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
                    do {
                      print("");
                      print("🏁" * 30);
                      print("MENÚ DE EDICIÓN (TEMAS DE EXPOSICÓN)");
                      print("🏁" * 30);
                      print("1. Añadir tema");
                      print("2. Modificar tema");
                      print("3. Eliminar tema");
                      print("0. Salir");

                      print("-" * 30);
                      print("Digite la opción deseada");
                      menuModificarTemasCaso1 =
                          int.parse(stdin.readLineSync()!);

                      switch (menuModificarTemasCaso1) {
                        case 1:
                          print("");
                          print(
                              "Escriba el nombre del tema que desea añadir a la lista");
                          nuevoTema = stdin.readLineSync()!;
                          listaTemasCaso1.add(nuevoTema);
                          break;

                        case 2:
                          print("");
                          print("Inserte la posición del tema a editar:");
                          posicionABuscarTemas =
                              int.parse(stdin.readLineSync()!);

                          print("");
                          print("Escriba la edición del tema:");
                          edicionTema = stdin.readLineSync()!;

                          listaTemasCaso1.insert(
                              posicionABuscarTemas, edicionTema);

                          print("-" * 30);
                          print("¡Tema editado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0; i < listaTemasCaso1.length; i++) {
                            stdout.write("$i. ");
                            print(listaTemasCaso1[i]);
                          }
                          break;

                        case 3:
                          print("");
                          print("Inserte la posición del tema a eliminar:");
                          posicionABuscarTemas =
                              int.parse(stdin.readLineSync()!);
                          listaTemasCaso1.removeAt(posicionABuscarTemas);

                          print("-" * 30);
                          print("Tema eliminado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0; i < listaTemasCaso1.length; i++) {
                            stdout.write("$i. ");
                            print(listaTemasCaso1[i]);
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarTemasCaso1 != 0);
                    break;

                  case 2:
                    print("");
                    print("LISTA DE TEMAS DE EXPOSICIÓN");
                    print("-" * 30);
                    for (int i = 0; i < listaTemasCaso1.length; i++) {
                      stdout.write("$i. ");
                      print(listaTemasCaso1[i]);
                    }
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

        List<String> listaEstudiantesCaso2 = [], listaTemasCaso2 = [];
        String? nombreCaso2,
            temaCaso2,
            nuevoNombre,
            nuevoTema,
            edicionTema,
            edicionNombre;
        int cantEstudiantes = 4,
            cantTemas = 7,
            menuModificarEstudiantesCaso2,
            menuModificarTemasCaso2,
            posicionABuscarEstudiantes,
            posicionABuscarTemas;

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
              if (listaEstudiantesCaso2.length == 0) {
                print("");
                print("Crear lista de estudiantes");
                print("-" * 30);

                for (int i = 0; i < cantEstudiantes; i++) {
                  print("Digite el nombre del estudiante #${i + 1}");
                  nombreCaso2 = stdin.readLineSync()!;
                  listaEstudiantesCaso2.add(nombreCaso2);
                }

                print("");
                for (int i = 0; i < listaEstudiantesCaso2.length; i++) {
                  stdout.write("$i. ");
                  print(listaEstudiantesCaso2[i]);
                }
              }
              do {
                print("");
                print("🏁" * 30);
                print("MENÚ CRUD DE ESTUDIANTES");
                print("🏁" * 30);
                print("1. Modificar lista de estudiantes");
                print("2. Mostrar lista de estudiantes");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuEstudiantes = int.parse(stdin.readLineSync()!);

                switch (opcionMenuEstudiantes) {
                  case 1:
                    do {
                      print("");
                      print("🏁" * 30);
                      print("MENÚ DE EDICIÓN (ESTUDIANTES)");
                      print("🏁" * 30);
                      print("1. Añadir estudiante");
                      print("2. Modificar estudiante");
                      print("3. Eliminar estudiante");
                      print("0. Salir");

                      print("-" * 30);
                      print("Digite la opción deseada");
                      menuModificarEstudiantesCaso2 =
                          int.parse(stdin.readLineSync()!);

                      switch (menuModificarEstudiantesCaso2) {
                        case 1:
                          print("");
                          print(
                              "Escriba el nombre del estudiante que desea añadir a la lista");
                          nuevoNombre = stdin.readLineSync()!;
                          listaEstudiantesCaso2.add(nuevoNombre);
                          break;

                        case 2:
                          print("");
                          print("Inserte la posición del estudiante a editar:");
                          posicionABuscarEstudiantes =
                              int.parse(stdin.readLineSync()!);

                          print("");
                          print("Escriba la edición del estudiante:");
                          edicionNombre = stdin.readLineSync()!;

                          listaEstudiantesCaso2.insert(
                              posicionABuscarEstudiantes, edicionNombre);

                          print("-" * 30);
                          print("¡Estudiante editado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0;
                              i < listaEstudiantesCaso2.length;
                              i++) {
                            stdout.write("$i. ");
                            print(listaEstudiantesCaso2[i]);
                          }
                          break;

                        case 3:
                          print("");
                          print(
                              "Inserte la posición del estudiante a eliminar:");
                          posicionABuscarEstudiantes =
                              int.parse(stdin.readLineSync()!);
                          listaEstudiantesCaso2
                              .removeAt(posicionABuscarEstudiantes);

                          print("-" * 30);
                          print("¡Estudiante eliminado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0;
                              i < listaEstudiantesCaso2.length;
                              i++) {
                            stdout.write("$i. ");
                            print(listaEstudiantesCaso2[i]);
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarEstudiantesCaso2 != 0);
                    break;

                  case 2:
                    print("");
                    print("LISTA DE ESTUDIANTES");
                    print("-" * 30);
                    for (int i = 0; i < listaEstudiantesCaso2.length; i++) {
                      stdout.write("$i. ");
                      print(listaEstudiantesCaso2[i]);
                    }
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
              if (listaTemasCaso2.length == 0) {
                print("");
                print("Crear lista de temas");
                print("-" * 30);

                for (int i = 0; i < cantTemas; i++) {
                  print("Digite el tema de exposición #${i + 1}");
                  temaCaso2 = stdin.readLineSync()!;
                  listaTemasCaso2.add(temaCaso2);
                }

                print("");
                for (int i = 0; i < listaTemasCaso2.length; i++) {
                  stdout.write("$i. ");
                  print(listaTemasCaso2[i]);
                }
              }
              do {
                print("");
                print("🏁" * 30);
                print("MENU CRUD PARA TEMAS DE EXPOSICIÓN");
                print("🏁" * 30);
                print("1. Modificar lista de temas de exposición");
                print("2. Mostrar lista de temas de exposición");
                print("0. Salir");

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMenuTemas = int.parse(stdin.readLineSync()!);

                switch (opcionMenuTemas) {
                  case 1:
                    do {
                      print("");
                      print("🏁" * 30);
                      print("MENÚ DE EDICIÓN (TEMAS DE EXPOSICIÓN)");
                      print("🏁" * 30);
                      print("1. Añadir tema");
                      print("2. Modificar tema");
                      print("3. Eliminar tema");
                      print("0. Salir");

                      print("-" * 30);
                      print("Digite la opción deseada");
                      menuModificarTemasCaso2 =
                          int.parse(stdin.readLineSync()!);

                      switch (menuModificarTemasCaso2) {
                        case 1:
                          print("");
                          print(
                              "Escriba el nombre del tema que desea añadir a la lista");
                          nuevoTema = stdin.readLineSync()!;
                          listaTemasCaso2.add(nuevoTema);
                          break;

                        case 2:
                          print("");
                          print("Inserte la posición del tema a editar:");
                          posicionABuscarTemas =
                              int.parse(stdin.readLineSync()!);

                          print("");
                          print("Escriba la edición del tema:");
                          edicionTema = stdin.readLineSync()!;

                          listaTemasCaso2.insert(
                              posicionABuscarTemas, edicionTema);

                          print("-" * 30);
                          print("¡Tema editado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0; i < listaTemasCaso2.length; i++) {
                            stdout.write("$i. ");
                            print(listaTemasCaso2[i]);
                          }
                          break;

                        case 3:
                          print("");
                          print("Inserte la posición del tema a eliminar:");
                          posicionABuscarTemas =
                              int.parse(stdin.readLineSync()!);
                          listaTemasCaso2.removeAt(posicionABuscarTemas);

                          print("-" * 30);
                          print("Tema eliminado con éxito!");
                          print("Nueva lista:");
                          for (int i = 0; i < listaTemasCaso2.length; i++) {
                            stdout.write("$i. ");
                            print(listaTemasCaso2[i]);
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarTemasCaso2 != 0);
                    break;

                  case 2:
                    print("");
                    print("LISTA DE TEMAS DE EXPOSICIÓN");
                    print("-" * 30);
                    for (int i = 0; i < listaTemasCaso2.length; i++) {
                      stdout.write("$i. ");
                      print(listaTemasCaso2[i]);
                    }
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

                print("-" * 30);
                print("Digite la opción deseada");
                opcionMezcla = int.parse(stdin.readLineSync()!);

                switch (opcionMezcla) {
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