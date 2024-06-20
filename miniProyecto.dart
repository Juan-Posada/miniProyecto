import 'dart:io';

void main(){
  //Mini proyecto final trimestre II - Juan Posada

  //DEFINICIÓN DE VARIABLES
  List<String> nombres = [];
  int opcionMenu;

  //PROCESOS

  do {
  print("MENU APP");
  print("-"*25);
  print("1. Ingresar estudiantes");
  print("2. Crear temas de exposición");

  print("*"*30);
  print("Digite la opción deseada");
  opcionMenu = int.parse(stdin.readLineSync()!);
  
  } while (opcionMenu != 0);
}