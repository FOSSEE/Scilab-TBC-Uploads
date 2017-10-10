//EXAMPLE 27.15
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
V1n=270;......//Terminal voltage of first generator on no-load in Volts
V1l=220;....//Terminal voltage of first generator on load in Volts
I1=35;.......//Load current of first current in Amperes
V2n=280;...//Terminal voltage of second generator on no-load in Volts
V2l=220;.....//Terminal voltage of second generator on load in Volts
I2=50;......//Load current of second generator in Amperes
Itl=60;.......//Total load in Amperes

//GENERATOR 1
VI1=V1n-V1l;......//Voltage drop for 35 A in Volts
Vda1=VI1/I1;......//Voltage drop per ampere

//GENERATOR 2
Vda2=(V2n-V2l)/I2;.....//Voltage drop per ampere

//Solving for current output of both the generators in Amperes
A=[-5 4.2;1 1];
B=[35;60];
ans=A\B;
r1=round(ans(1)*10)/10;......//Current output of first generator in Amperes
r2=round(ans(2)*10)/10;.....//Current output of second generator in Amperes

disp(r1,"Current output of first generator in Amperes:");
disp(r2,"Current output of second generator in Amperes:");

V=V2n-(Vda2)*r2;.......//Bus bar voltage in Volts
r3=round(V*10)/10;......//Rounding of decimal places
disp(r3,"Bus bar voltage in Volts:");

Po1=r3*r1/1000;.....//Output of first generator in Kilo Watts
Po2=r3*r2/1000;......//Output of second generator in Kilo Watts

r4=round(Po1*1000)/1000;...//Rounding of decimal places
r5=round(Po2*1000)/1000;..//Rounding of decimal places

disp(r4,"Output of first generator in Kilo Watts:");
disp(r5,"Output of second generator in Kilo Watts:");


