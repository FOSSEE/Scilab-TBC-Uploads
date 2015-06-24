// Example 3.8
clc;
clear;
close;
// Given data
format('v',8);
Rf= 500*10^3;// in Ω
R1= 5*10^3;//in Ω
Vin= 0.1;// input voltage in V
Af= -Rf/R1;// voltage gain
Rin= R1;// input resistance in Ω
Rin= Rin*10^-3;// in kΩ
Rout= 0;// in Ω
Vout= Af*Vin;// output voltage in V
I_in= Vin/R1;// input current in A
I_in= I_in*10^3;// in mA
disp(Af,"The amplifier circuit voltage gain is : ");
disp(Rin,"The amplifier circuit input resistance in kΩ is : ");
disp(Rout,"The amplifier circuit output resistance in Ω is : ");
disp(Vout,"The output voltage in volts is : ");
disp(I_in,"The input current in mA is : ");

