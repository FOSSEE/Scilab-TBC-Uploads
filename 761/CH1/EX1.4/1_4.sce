clc;
// page no 18
// prob no. 1.4
// In given problem noise power bandwidth is 10kHz; resistor temp T(0c)=27
// First we have to convert temperature to kelvins:
T0c=27;
Tk=T0c+273;
// noise power contributed by resistor , Pn= k*T*B
k=1.38*10^(-23);
B=10*10^3;
Pn= k*Tk*B;
disp('W',Pn,'noise power contributed by resistor');