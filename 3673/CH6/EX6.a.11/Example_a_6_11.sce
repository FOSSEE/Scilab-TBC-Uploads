//Example_a_6_11 page no:241
clc;
Vmag=500;
Vang=0;
Imag=21.73;
Iang=0;
P=Vmag*Imag/2;
P=P/1000;//converting to killo watt
disp(P,"the power delivered by 500 volt source is (in kW)");
P1=(3*4*Imag*Imag)/2;
P1=P1/1000;//converting to killo watt
disp(P1,"the power delivered by dependent voltage source is (in kW)");
