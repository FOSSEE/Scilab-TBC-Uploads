// Example 6.4
format('v',5)
clc;
clear;
close;
// given data
R1= 47*10^3;// in Ω
R2= 15*10^3;// in Ω
R_E= 8.2*10^3;// in Ω
R_C= 10*10^3;// in Ω
R3= 3.3*10^3;// in Ω
bita= 200;
V_CC= 30;// in V
V_BE= 0.7;// in V
Vin= 5*10^-3;//in V
Vt= 25*10^-3;// in V
V2= R2*V_CC/(R1+R2);// in V
// DC voltage across emitter
V_E= V2-V_BE;// in V
// Emitter current
I_E= V_E/R_E;// in A
r_desh_e= Vt/I_E;// in Ω
r_L= R_C*R3/(R_C+R3);//in Ω
A= r_L/r_desh_e;
// The output voltage 
Vout= A*Vin;// in V
Zin_base= bita*r_desh_e;// in Ω
// The input impedance of amplifier 
Zin= R1*R2*Zin_base/(R2*Zin_base+R1*Zin_base+R1*R2);// in Ω
Vout= Vout*10^3;// in mV
Zin= Zin*10^-3;// in k ohm
disp(Vout,"The output voltage in mV is : ")
disp(Zin,"The input impedance of amplifier in kΩ is : ")


