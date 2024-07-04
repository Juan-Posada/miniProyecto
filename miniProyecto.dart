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

        List<String> listaTemasCaso1Complejidad3 = [
              "Programación orientada a objetos",
              "Diferencia entre programación orientada a objetos y programación estructurada",
              "Objeto, clase y sus diferencias",
              "Abstracción",
              "Encapsulamiento",
            ],
            listaTemasCaso1Complejidad4 = [
              "Herencia",
              "Polimorfismo",
              "Diagramas de UML"
            ];

        List<List<String>> grupos3 = [];

        int menuModificarEstudiantesCaso1,
            menuModificarTemasCaso1,
            posicionABuscarEstudiantes,
            posicionABuscarTemas,
            cantParticipantesTema,
            cantidadGrupos3 = 5,
            cantidadGrupos4 = 3,
            cantParticipantes3 = 3,
            cantParticipantes4 = 4,
            contadorEstudiantes = 0;
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
                          print("Volviendo al menú de edición ↩");
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
                    print("De vuelta al menú principal ↩");
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
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print(
                                "Escriba el nombre del tema que desea añadir a la lista");
                            nuevoTema = stdin.readLineSync()!;
                            listaTemasCaso1Complejidad3.add(nuevoTema);
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print(
                                "Escriba el nombre del tema que desea añadir a la lista");
                            nuevoTema = stdin.readLineSync()!;
                            listaTemasCaso1Complejidad4.add(nuevoTema);
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        case 2:
                          print("");
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print("Inserte la posición del tema a editar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);

                            print("");
                            print("Escriba la edición del tema:");
                            edicionTema = stdin.readLineSync()!;

                            listaTemasCaso1Complejidad3.insert(
                                posicionABuscarTemas, edicionTema);

                            print("-" * 30);
                            print("¡Tema editado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso1Complejidad3.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso1Complejidad3[i]);
                            }
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print("Inserte la posición del tema a editar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);

                            print("");
                            print("Escriba la edición del tema:");
                            edicionTema = stdin.readLineSync()!;

                            listaTemasCaso1Complejidad4.insert(
                                posicionABuscarTemas, edicionTema);

                            print("-" * 30);
                            print("¡Tema editado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso1Complejidad4.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso1Complejidad4[i]);
                            }
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        case 3:
                          print("");
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print("Inserte la posición del tema a eliminar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);
                            listaTemasCaso1Complejidad3
                                .removeAt(posicionABuscarTemas);

                            print("-" * 30);
                            print("Tema eliminado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso1Complejidad3.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso1Complejidad3[i]);
                            }
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print("Inserte la posición del tema a eliminar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);
                            listaTemasCaso1Complejidad4
                                .removeAt(posicionABuscarTemas);

                            print("-" * 30);
                            print("Tema eliminado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso1Complejidad4.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso1Complejidad4[i]);
                            }
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición ↩");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarTemasCaso1 != 0);
                    break;

                  case 2:
                    print("");
                    print("-" * 30);
                    print(
                        "Digite la cantidad de participantes que tiene su tema de exposición:");
                    cantParticipantesTema = int.parse(stdin.readLineSync()!);

                    if (cantParticipantesTema == 3) {
                      print("");
                      print("LISTA DE TEMAS DE EXPOSICIÓN (3 PARTICIPANTES)");
                      print("-" * 30);
                      for (int i = 0;
                          i < listaTemasCaso1Complejidad3.length;
                          i++) {
                        stdout.write("$i. ");
                        print(listaTemasCaso1Complejidad3[i]);
                      }
                    } else if (cantParticipantesTema == 4) {
                      print("");
                      print("LISTA DE TEMAS DE EXPOSICIÓN (4 PARTICIPANTES)");
                      print("-" * 30);
                      for (int i = 0;
                          i < listaTemasCaso1Complejidad4.length;
                          i++) {
                        stdout.write("$i. ");
                        print(listaTemasCaso1Complejidad4[i]);
                      }
                    } else {
                      print("");
                      print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                    }
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal ↩");
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
                    listaEstudiantesCaso1.shuffle();
                    listaTemasCaso1Complejidad3.shuffle();
                    listaTemasCaso1Complejidad4.shuffle();

                    for (int i = 0; i < cantidadGrupos3; i++) {
                      List<String> grupo1 = [];
                      grupo1.add(listaTemasCaso1Complejidad3[i]);
                      for (int j = 0; j < cantParticipantes3; j++) {
                        contadorEstudiantes++;
                        if (contadorEstudiantes <
                            listaEstudiantesCaso1.length) {
                          grupo1
                              .add(listaEstudiantesCaso1[contadorEstudiantes]);
                        }
                      }
                      grupos3.add(grupo1);
                    }

                    for (int i = 0; i < cantidadGrupos4; i++) {
                      List<String> grupo2 = [];
                      grupo2.add(listaTemasCaso1Complejidad4[i]);
                      for (int j = 0; j < cantParticipantes4; j++) {
                        contadorEstudiantes++;
                        if (contadorEstudiantes <
                            listaEstudiantesCaso1.length) {
                          grupo2
                              .add(listaEstudiantesCaso1[contadorEstudiantes]);
                        }
                      }
                      grupos3.add(grupo2);
                    }

                    for (int i = 0; i < grupos3.length; i++) {
                      print("----" * 30);
                      for (int j = 0; j < grupos3[0].length; j++) {
                        stdout.write("${grupos3[i][j]}||");
                      }
                      print("");
                    }
                    break;

                  case 2:
                    for (int i = 0; i < grupos3.length; i++) {
                      print("----" * 30);
                      for (int j = 0; j < grupos3[0].length; j++) {
                        stdout.write("${grupos3[i][j]}||");
                      }
                      print("");
                    }
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal ↩");
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
        List<List<String>> grupos3 = [];

        List<String> listaEstudiantesCaso2 = [],
            listaTemasCaso2Complejidad3 = [],
            listaTemasCaso2Complejidad4 = [];
        String? nombreCaso2,
            temaCaso2,
            nuevoNombre,
            nuevoTema,
            edicionTema,
            edicionNombre;
        int cantEstudiantes = 27,
            cantTemasComplejidad3 = 5,
            cantTemasComplejidad4 = 3,
            menuModificarEstudiantesCaso2,
            menuModificarTemasCaso2,
            posicionABuscarEstudiantes,
            posicionABuscarTemas,
            cantParticipantesTema,
            contadorEstudiantes = 0,
            cantParticipantes3 = 3,
            cantParticipantes4 = 4,
            cantidadGrupos3 = listaTemasCaso2Complejidad3.length,
            cantidadGrupos4 = listaTemasCaso2Complejidad4.length;

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
                          print("Volviendo al menú de edición ↩");
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
              print("");
              print("-" * 30);
              print(
                  "Digite la cantidad de participantes que tiene su tema de exposición:");
              cantParticipantesTema = int.parse(stdin.readLineSync()!);

              if (cantParticipantesTema == 3) {
                if (listaTemasCaso2Complejidad3.length == 0) {
                  print("");
                  print("Crear lista de temas");
                  print("-" * 30);

                  for (int i = 0; i < cantTemasComplejidad3; i++) {
                    print("Digite el tema de exposición #${i + 1}");
                    temaCaso2 = stdin.readLineSync()!;
                    listaTemasCaso2Complejidad3.add(temaCaso2);
                  }

                  print("");
                  print("Lista de temas para 3 estudiantes:");
                  print("-" * 30);
                  for (int i = 0; i < listaTemasCaso2Complejidad3.length; i++) {
                    stdout.write("$i. ");
                    print(listaTemasCaso2Complejidad3[i]);
                  }
                } else {
                  print("");
                  print(
                      "🚨La lista de temas para 3 participantes ya está creada🚨");
                }
              } else if (cantParticipantesTema == 4) {
                if (listaTemasCaso2Complejidad4.length == 0) {
                  print("");
                  print("Crear lista de temas");
                  print("-" * 30);

                  for (int i = 0; i < cantTemasComplejidad4; i++) {
                    print("Digite el tema de exposición #${i + 1}");
                    temaCaso2 = stdin.readLineSync()!;
                    listaTemasCaso2Complejidad4.add(temaCaso2);
                  }

                  print("");
                  print("Lista de temas para 4 estudiantes:");
                  print("-" * 30);
                  for (int i = 0; i < listaTemasCaso2Complejidad4.length; i++) {
                    stdout.write("$i. ");
                    print(listaTemasCaso2Complejidad4[i]);
                  }
                } else {
                  print("");
                  print(
                      "🚨La lista de temas para 4 participantes ya está creada🚨");
                }
              } else {
                print("");
                print("CANTIDAD DE PARTICIPANTES INCORRECTA");
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
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print(
                                "Escriba el nombre del tema que desea añadir a la lista");
                            nuevoTema = stdin.readLineSync()!;
                            listaTemasCaso2Complejidad3.add(nuevoTema);
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print(
                                "Escriba el nombre del tema que desea añadir a la lista");
                            nuevoTema = stdin.readLineSync()!;
                            listaTemasCaso2Complejidad4.add(nuevoTema);
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        case 2:
                          print("");
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print("Inserte la posición del tema a editar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);

                            print("");
                            print("Escriba la edición del tema:");
                            edicionTema = stdin.readLineSync()!;

                            listaTemasCaso2Complejidad3.insert(
                                posicionABuscarTemas, edicionTema);

                            print("-" * 30);
                            print("¡Tema editado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso2Complejidad3.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso2Complejidad3[i]);
                            }
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print("Inserte la posición del tema a editar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);

                            print("");
                            print("Escriba la edición del tema:");
                            edicionTema = stdin.readLineSync()!;

                            listaTemasCaso2Complejidad4.insert(
                                posicionABuscarTemas, edicionTema);

                            print("-" * 30);
                            print("¡Tema editado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso2Complejidad4.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso2Complejidad4[i]);
                            }
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        case 3:
                          print("");
                          print("-" * 30);
                          print(
                              "Digite la cantidad de participantes que tiene su tema de exposición:");
                          cantParticipantesTema =
                              int.parse(stdin.readLineSync()!);

                          if (cantParticipantesTema == 3) {
                            print("");
                            print("Inserte la posición del tema a eliminar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);
                            listaTemasCaso2Complejidad3
                                .removeAt(posicionABuscarTemas);

                            print("-" * 30);
                            print("Tema eliminado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso2Complejidad3.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso2Complejidad3[i]);
                            }
                          } else if (cantParticipantesTema == 4) {
                            print("");
                            print("Inserte la posición del tema a eliminar:");
                            posicionABuscarTemas =
                                int.parse(stdin.readLineSync()!);
                            listaTemasCaso2Complejidad4
                                .removeAt(posicionABuscarTemas);

                            print("-" * 30);
                            print("Tema eliminado con éxito!");
                            print("Nueva lista:");
                            for (int i = 0;
                                i < listaTemasCaso2Complejidad4.length;
                                i++) {
                              stdout.write("$i. ");
                              print(listaTemasCaso2Complejidad4[i]);
                            }
                          } else {
                            print("");
                            print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                          }
                          break;

                        default:
                          print("");
                          print("Volviendo al menú de edición ↩");
                          print("-" * 30);
                          break;
                      }
                    } while (menuModificarTemasCaso2 != 0);
                    break;

                  case 2:
                    print("");
                    print("-" * 30);
                    print(
                        "Digite la cantidad de participantes que tiene su tema de exposición:");
                    cantParticipantesTema = int.parse(stdin.readLineSync()!);

                    if (cantParticipantesTema == 3) {
                      print("");
                      print("LISTA DE TEMAS DE EXPOSICIÓN (3 PARTICIPANTES)");
                      print("-" * 30);
                      for (int i = 0;
                          i < listaTemasCaso2Complejidad3.length;
                          i++) {
                        stdout.write("$i. ");
                        print(listaTemasCaso2Complejidad3[i]);
                      }
                    } else if (cantParticipantesTema == 4) {
                      print("");
                      print("LISTA DE TEMAS DE EXPOSICIÓN (4 PARTICIPANTES)");
                      print("-" * 30);
                      for (int i = 0;
                          i < listaTemasCaso2Complejidad4.length;
                          i++) {
                        stdout.write("$i. ");
                        print(listaTemasCaso2Complejidad4[i]);
                      }
                    } else {
                      print("");
                      print("CANTIDAD DE PARTICIPANTES INCORRECTA");
                    }
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal ↩");
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
                    listaEstudiantesCaso2.shuffle();
                    listaTemasCaso2Complejidad3.shuffle();
                    listaTemasCaso2Complejidad4.shuffle();

                    for (int i = 0; i < cantidadGrupos3; i++) {
                      List<String> grupo1 = [];
                      grupo1.add(listaTemasCaso2Complejidad3[i]);
                      for (int j = 0; j < cantParticipantes3; j++) {
                        contadorEstudiantes++;
                        if (contadorEstudiantes <
                            listaEstudiantesCaso2.length) {
                          grupo1
                              .add(listaEstudiantesCaso2[contadorEstudiantes]);
                        }
                      }
                      grupos3.add(grupo1);
                    }

                    for (int i = 0; i < cantidadGrupos4; i++) {
                      List<String> grupo2 = [];
                      grupo2.add(listaTemasCaso2Complejidad4[i]);
                      for (int j = 0; j < cantParticipantes4; j++) {
                        contadorEstudiantes++;
                        if (contadorEstudiantes <
                            listaEstudiantesCaso2.length) {
                          grupo2
                              .add(listaEstudiantesCaso2[contadorEstudiantes]);
                        }
                      }
                      grupos3.add(grupo2);
                    }

                    for (int i = 0; i < grupos3.length; i++) {
                      print("----" * 30);
                      for (int j = 0; j < grupos3[0].length; j++) {
                        stdout.write("${grupos3[i][j]}||");
                      }
                      print("");
                    }
                    break;

                  case 2:
                    for (int i = 0; i < grupos3.length; i++) {
                      print("----" * 30);
                      for (int j = 0; j < grupos3[0].length; j++) {
                        stdout.write("${grupos3[i][j]}||");
                      }
                      print("");
                    }
                    break;

                  default:
                    print("");
                    print("De vuelta al menú principal ↩");
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
        print("SALIENDO DE LA APP, ¡Vuelva pronto!👍");
        break; //CIERRA SWITCH 1
    }
  } while (opcionTipoApp != 0); //CIERRA DO WHILE 1
}
