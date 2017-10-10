//EXAMPLE 26.21(c)
//4-POLE DC SHUNT GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;.........................//Total number of poles
S=80;........................//Total number of slots
C=10;.........................//Total number of conductor per slots
E1=400;.........................//Generated EMF at No load in Volts
N1=1000;........................//Speed of the generator in rpm
N2=800;.........................//Dropped speed of the generator in rpm
Al=P;.........................//Number of parallel paths in a lap wound generator
Z=S*C;........................//Total number of conductors
E2=220;.......................//Generated open circuit voltage in Volts

//Keeping speed held cnstant while changing the flux per pole
printf("(i)Keeping speed held cnstant while changing the flux per pole");
Phi1=(E1*60*Al)*1000/(P*N1*Z);...........//Flux per pole in Mili Webers at 400 Volts
disp(Phi1,"Flux per pole in Mili Webers at 400 Volts:");

Phi2=(E2/E1)*Phi1;....................//Flux per pole in Mili Webers at 220 Volts
disp(Phi2,"Flux per pole in Mili Webers at 220 Volts:");

if Phi2<Phi1 then
 printf("By increasing the shunt field circuit resistance with the help of adding external rheostatic,\n");
 printf("the current in the field circuit is reduced so as to decrease the flux to %0.1f mWb",Phi2);
end


//Keeping the same flux per pole while changing the speed
printf("\n \n(ii).Keeping the same flux per pole while changing the speed");
N=(E2*60)/((Phi1/1000)*N2);................//Speed of the generator in rpm at 30 Mili Webers
disp(N,"Speed of the generator in rpm at 30 Mili Webers:");

printf("Field circuit resistance must be reduced to a new value in order to obtain");
printf("\n %0.1f mWb of flux pole from a voltage of 220 V",Phi);

