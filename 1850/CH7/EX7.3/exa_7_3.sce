// Exa 7.3
clc;
clear;
close;
//given data
f=10;// in kHz
f=f*10^3;// in Hz
I_Bmax= 500;// in nA
I_Bmax= I_Bmax*10^-9;// in amphere
// Let current through resistor R1 be equal to 100 times I_Bmax, so
I_1= 100*I_Bmax;// in amp
Vcc= 10;// in volt
Vout= Vcc-1;// in volt
Addition_RfR1= Vout/(500*10^-6);// value of Rf+R1 in ohm
Addition_RfR1=Addition_RfR1*10^-3;// in kohm
// Rf= 2*R1, So
R1= Addition_RfR1/3;// (used 5.6 kohm Standard value resistor)
R1= 5.6;// in kohm
Rf= 2*R1;// in kohm// (used 12 kohm standard value resistor)
Rf=ceil(Rf);
R=R1;// in kohm
C= 1/(2*%pi*f*R);// in F (Used 2700pF standard value)
C=2700;// in pF 
disp(R1,"Value of R1 in kohm")
disp(Rf,"Value of Rf in kohm")
disp(R,"Value of R in kohm")
disp(C,"Value of C in pF")

