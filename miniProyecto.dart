import 'dart:io';

void main(){
  //Mini proyecto final trimestre II - Juan Posada

  //DEFINICIÓN DE VARIABLES
  List<String> nombres = [];
  List<List<String>> exposicionesTemas = [];
  int opcionMenuPrincipal, opcionMenuEstudiantes, opcionMenuTemas, opcionMezcla;

  //PROCESOS

  do {
  print("");
  print("[BIENVENIDO]");
  print("🏁"*30);
  print("MENÚ APP PRINCIPAL");
  print("🏁"*30);
  print("1. Entrar al menú estudiantes");
  print("2. Entrar al menú de exposicones");
  print("3. Mezclar grupos de trabajo");
  print("0. Salir");

  print("-"*30);
  print("Digite la opción deseada");
  opcionMenuPrincipal = int.parse(stdin.readLineSync()!);
  
  switch (opcionMenuPrincipal) {
    case 1:
      do {
          print("");
          print("🏁"*30);
          print("MENÚ CRUD ESTUDIANTES");
          print("🏁"*30);
          print("1. Crear lista de estudiantes");
          print("2. Modificar lista de estudiantes");
          print("3. Mostrar lista de estudiantes");
          print("0. Salir");

          print("-"*30);
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

              break;
          }
      } while (opcionMenuEstudiantes != 0);
      break;
    
    case 2:
      do {
          print("");
          print("🏁"*30);
          print("MENU CRUD TEMAS DE EXPOSICIÓN");
          print("🏁"*30);
          print("1. Crear lista de temas de exposición");
          print("2. Modificar lista de temas de exposición");
          print("3. Mostrar lista de temas de exposición");
          print("0. Salir");

          print("-"*30);
          print("Digite la opción deseada");
          opcionMenuTemas = int.parse(stdin.readLineSync()!);
      } while (opcionMenuTemas != 0);
      break;

    case 3:
      do {
          print("");
          print("🏁"*30);
          print("MENU CRUD MEZCLA DE GRUPOS");
          print("🏁"*30);
          print("1. Mezclar equipos de trabajo");
          print("2. Mostrar equipos de trabajo");
          print("0. Salir");

          print("*");
          print("Digite la opción deseada");
          opcionMezcla = int.parse(stdin.readLineSync()!);
      } while (opcionMezcla != 0);
      break;

    default:
      print("¡Hasta pronto, 🙌!");
      break;
  }

  } while (opcionMenuPrincipal != 0);
}