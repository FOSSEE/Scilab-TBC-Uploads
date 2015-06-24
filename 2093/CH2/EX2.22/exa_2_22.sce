// Exa 2.22
clc;
clear; 
close;
// Given data 
Vt= 0.9;// in V
V_A= 50;// in V
V_D= 2;// in V
R_L= 10;// in MΩ
R_L= R_L*10^3;// in Ω
R_G= 10;// in MΩ
R_G= R_G*10^6;// in Ω
I_D= 500;// in µA
I_D= I_D*10^-6;// in A
V_GS= V_D;// in V
ro= V_A/I_D;// in Ω
gm= 2*I_D/(V_GS-Vt);// in A/V
// vo= -gm*vi*(ro || R_L)
vo_by_vi = -gm*(ro*R_L/(ro+R_L));// in V/V
disp(vo_by_vi ,"The voltage gain in V/V is : ")
// For I= 1 mA or twice the current 
I_D1= I_D;// in A
I_D2= 2*I_D1;// in A
gm1= gm;// in A/V
// Effect on V_D
// I_D1/I_D2 = (V_GS1-Vt)^2/(V_GS2-Vt)^2
V_GS1= V_GS;
V_GS2= Vt+sqrt(2)*(V_GS1-Vt);// in V
disp(V_GS2,"The new value of V_GS in volts is : ")
// Effect on gm
// gm1/gm2= sqrt(I_D1/I_D2)
gm2= sqrt(I_D2/I_D1)*gm1;// in A/V
disp(gm2*10^3,"The new value of gm2 in mA/V is : ")
// Effect on ro
// ro1/ro2= I_D2/I_D1
ro1= ro;// in Ω
ro2= I_D1*ro1/I_D2;// in Ω
disp(ro2*10^-3,"The new value of ro in kΩ/V is : ")
// Effect on gain
// Av= -gm*(ro2 || R_L)
Av= -gm*(ro2*R_L/(ro2+R_L));// in V/V
disp(Av,"The new value of voltage gain in V/V is : ")

// Note: There is some difference between  the new value of voltage gain in book and coding. The reason behind this is that , 
// the accurate value of new value of gm is 1.2856487 and in the book 1.3 has  taken at place of 1.2856487. 
// If we take this value of new value of gm 1.3 at place of 1.2856487 then our new voltage gain value will be same as in the book







