// Example 3.20: Range and average watage of Rs
clc, clear
// From Fig. 3.43
Vsmin=20; // in volts
Vsmax=30; // in volts
RLmin=1; // in ohms
RLmax=10; // in ohms
Izmin=10e-3; // in amperes
Pzmax=50; // in watts
Vz=10; // in volts
ILmin=Vz/RLmax; // in amperes
ILmax=Vz/RLmin; // in amperes
Izmax=Pzmax/Vz; // in amperes
Rs1=(Vsmin-Vz)/(ILmax+Izmin); // in ohms
Rs2=(Vsmax-Vz)/(ILmin+Izmax); // in ohms
disp(Rs1,"Rs <= ");
disp(Rs2,"Rs >= ");
disp("To meet the load current variation from 1 A to 10 A a zener of specification Izmin = 0.01 A to Izmax = 5 A cannot meet the requirement for any value of Rs")
// Let
RLmin=1e3; // in ohms
RLmax=10e3; // in ohms
ILmin=Vz/RLmax; // in amperes
ILmax=Vz/RLmin; // in amperes
Rsmin=(Vsmax-Vz)/(ILmin+Izmax); // in ohms
Rsmax=(Vsmin-Vz)/(ILmax+Izmin); // in ohms
disp(Rsmin,"Minimum value of Rs (Ω) =");
disp(Rsmax,"Maximum value of Rs (Ω) =");
Rs=4; // in ohms
W=Rs*(ILmax+Izmax)^2; // in watts
disp(W,"Average wattage of Rs (W) =");