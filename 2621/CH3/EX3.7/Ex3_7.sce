// Example 3.7
clc;
clear;
close;
// Given data
format('v',8);
Rin= 2*10^6;// in Ω
Rout= 75;// in Ω
f0= 5;// in Hz
A= 200000;//unit less
VCC= 15;// in V
VEE= -15;// in V
Vout_swing= 13;// in V
// Part (i) : Non-inverting Amplifier
R1= 1*10^3;// in Ω
Rf= 10*10^3;//in Ω
B= R1/(R1+Rf);// feedback fraction
AB= A*B;// feedback factor
Af= 1+Rf/R1;// voltage gain
Rin_f= Rin*(1+AB);// input resistance in Ω
Rin_f=Rin_f*10^-9;// in GΩ
Rout_f= Rout/(1+AB);// output resistance in Ω
f_f= f0*(1+AB);// bandwidth in Hz
f_f=f_f*10^-3;// in kHz
VooT= Vout_swing/(1+AB);//in V
VooT= VooT*10^3;// in mV
disp("Part (i) : Non-inverting Amplifier :- ");
disp(Af,"The closed-loop voltage gain is : "); 
disp(Rin_f,"The input resistance in GΩ is : ");
disp(Rout_f,"The output resistance in Ω is : ");
disp(f_f,"The bandwidth in kHz is : ");
disp("The output offset voltage with feedback is : ± "+string(VooT)+" mV")

// Part (ii) : Inverting Amplifier
R1= 470;// in Ω
Rf= 4.7*10^3;//in Ω
B= R1/(R1+Rf);// feedback fraction
AB= A*B;// feedback factor
Af= -Rf/R1;// voltage gain
Rin_f= R1;// input resistance in Ω
Rout_f= Rout/(1+AB);// output resistance in Ω
f_f= f0*(1+AB);// bandwidth in Hz
f_f=f_f*10^-3;// in kHz
VooT= Vout_swing/(1+AB);//in V
VooT= VooT*10^3;// in mV
disp("Part (ii) : Inverting Amplifier :- ");
disp(Af,"The closed-loop voltage gain is : "); 
disp(Rin_f,"The input resistance in GΩ is : ");
disp(Rout_f,"The output resistance in Ω is : ");
disp(f_f,"The bandwidth in kHz is : ");
disp("The output offset voltage with feedback is : ± "+string(VooT)+" mV")
