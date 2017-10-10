//Example 4.20
close;
clc;

V=3;                  //in volts
Rm=100;               //In ohms
Rh=1000;              //In ohms
Ifsd=1*10^-3;         //in amperes

//Calculation of R1
R1=Rh-Ifsd*Rm*Rh/V;

//Calculation of R2
R2=Ifsd*Rm*Rh/(V-Ifsd*Rh);

//R2 compensation
drop=3;        //by percent
V=V-drop*V/100;
R2new=Ifsd*Rm*Rh/(V-Ifsd*Rh);

printf('\nValue of R1 = %.2f ohm\n',R1)
printf('\nValue of R2 = %.2f ohm\n',R2)
printf('\nValue of R2 after compensation = %.2f ohm\n',R2new)