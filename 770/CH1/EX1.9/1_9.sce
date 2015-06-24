clear;
clc;

//Example - 1.9
//Page number - 26
printf("Example - 1.9 and Page number - 26\n\n");

//Given
//Antoine equation for water   ln(Psat)=16.262-(3799.89/(T_sat + 226.35))
P = 2;//[atm] - Pressure
P = (2*101325)/1000;//[kPa]

P_sat = P;// Saturation pressure
T_sat = (3799.89/(16.262-log(P_sat)))-226.35;//[C] - Saturation temperature
//Thus boiling at 2 atm occurs at Tsat = 120.66 C.

//From steam tables,at 2 bar,Tsat = 120.23 C and at 2.25 bar,Tsat = 124.0 C
//From interpolation for T_sat = 120.66 C,P = 2.0265 bar
//For P_= 2.0265 bar,T_sat, from steam table by interpolation is given by
//((2.0265-2)/(2.25-2))=((Tsat-120.23)/(124.0-120.23))
T_sat_0 = (((2.0265-2)/(2.25-2))*(124.0-120.23))+120.23;//[C]

printf(" Saturation temperature (Tsat) = %f C which is close to %f C as determined from Antoine equation",T_sat_0,T_sat);



