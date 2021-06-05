program fibonacci;

uses crt;
var  
 i: integer;
 j: integer; 
 option: integer;
 posicion: integer;
 resultado: integer;
 pertenecer: boolean;
 number: integer;
             x: integer;
             y: integer;
           posicion2: integer;
             n: integer;
            contador: integer;
            
BEGIN
 i:= 0;
 j:= 1;
 option:= 0;
 posicion:= 1;
 resultado:= 0;
 pertenecer:=false;
 number:= 0;
             x:=1;
             y:=1;
             contador:=2;
             n:=0;
                    
	  repeat
	     clrscr;
	     writeln('*******************MENU****************************');
	     writeln('');
	     writeln(  ' 1 -  Informacion sobre la sucesion de fibonacci');
	     writeln(  ' 2 -  Calculo de posicion');
	     writeln(  ' 3 -  Impresion de la sucesion');
	     writeln(  ' 4 -  Salir del programa');
	     writeln('');
	     writeln('***************************************************'); 
	     write('        INGRESE UNA OPCION Y PRESIONE ENTER');
	     readln(option);
	      clrscr; 
	       
   case option of 
  
   1: 
     
   begin
   clrscr;
     writeln('Fibonacci es la secuencia infinita de numeros naturales que van a partir del 0 y el 1 ');
     writeln('Asi comienza la sucesion: 0,1,1,2,3,5,8,13,21,34,55,84,144,233,...');
     writeln('Se optiene sumando los dos numeros anteriores de la secuencia ');
	 writeln('Fue expuesta por el matematico italiano Leonardo de Pisa en el siglo XIII ');
	 writeln('Leonardo mejor conocido como Fibonacci publico su ''libro Liber Abaci'' en 1202');
	 writeln('En la actualidad tiene numerosas aplicaciones como en lasciencias, la matematica y teorias de juegos');
     writeln(                      '******PRESIONE 1 Y ENTER PARA VOLVER A MENU********');
   readln(option);
   clrscr;
   end; 
   
    
   2:
   begin
   clrscr;  
             writeln('Ingrese un valor y presione enter:');
                    readln(number);
                   while resultado<= number do
                 begin
                    posicion:=posicion+ 1;
                    if resultado= number then
                 begin
                    pertenecer:=true;
                 end;
                    resultado:= i+j;
                    i:= j;
                    j:=resultado;
                 end;
                    if number= 0 then
                 begin
                      writeln('El numero 0 se encuentra en la primera posicion');
                 end
                    else if number= 1 then
                 begin
                     writeln('El numero 1 se encuentra en la segunda y tercera posicion de la sucesion');
                 end
                    else if pertenecer= true then 
                 begin
                     writeln('El numero', number ,'pertenece a la sucesion en la posicion', posicion);
                 end
                     else 
                 begin
                      writeln('El numero',number,'no pertenece a la sucesion');
                  end; 
                  writeln('       ******PRESIONE 1 Y ENTER PARA VOLVER A MENU********'); 
   readln(option);
   clrscr;               
   end;
   
   
    3:
     begin
     clrscr;
         writeln('Ingrese un numero para conocer su posicion y presione enter');
         readln(n);
         if (n= 1 ) or (n= 2) then
         writeln('La posicion del ',n,'es:1');
         if(n>2) and (n<93) then
          begin
         x:=1;
         y:=1;
         contador:=2;
         repeat
         clrscr;
         posicion2:=x+y;
         contador:=contador+1;
         x:=y;
         y:=posicion2;
         writeln('La posicion del ',n,' en fibonacci es:',posicion2); 
         until(contador= n);
         end;
         writeln('        ******PRESIONE 1 Y ENTER PARA VOLVER A MENU********');
     readln(option);
    clrscr;
         
    end;
   
   
    4:
    
    begin
   
   writeln('Usted selecciono salir del programa');
   writeln('Que tenga un buen dia');
   
   
    end;
   
     
   
   
  end;
   
     until option=4;    


END.
