//EXAMPLE 27.11
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
Cs=55;.........//Total number of commutator segments
rpm=900;........//Total number of revolutions per minute
Wb=1.74;.........//Brush width in commutator segments
L=153*10^-6;..........//Coefficient of self-induction in Henry
I=27;.............//Current per coil in Amperes

v=Cs*(rpm/60);.......//Peripheral velocity in segments/sec
Tc=Wb/v;...........//ime for each commutation in seconds
r1=round(Tc*100000)/100000;.......//Rounding of decimal places
E=L*2*I/r1;..........//Reactance voltage in Volts
r=round(E*1000)/1000;.....//Rounding of decimal places
disp(r,"Reactance voltage in Volts:");
