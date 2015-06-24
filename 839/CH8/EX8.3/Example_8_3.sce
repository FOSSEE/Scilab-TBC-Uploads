//clear//
clear;
clc;

//Example 8.3
//Given
vdot = 180; //[ft^3/min]
pa = 14; //[lbf/in.^2]
pb = 900; //[lbf/in.^2]
Ta = 80+460; //[K]
q0 = 0.063; //[m^3/s]
Cp = 9.3; //[Btu/lbmol-F]
gama = 1.31;
delta_Tw = 20; // [F]
//(a)
neta = 0.80;
//For a multistage compressor the total power is a minimum if each stage doed the same amount of work
//Hence using same copression ration for each stage
//Using Eq.(8.25)
//For one stage
comp_ratio = (900/14)^(1/3);
//Using Eq.(8.29), the power required by each stage
Pb = (Ta*q0*gama*vdot)*(comp_ratio^(1-1/gama)-1)/(520*(gama-1)*neta); // [hp]
//Total Power
Pt = 3*Pb // [hp]

//(b)
//Using Eq.(8.22), the temperature at the exit of each stage
Tb = Ta*comp_ratio^(1-1/gama)  // [R]

//(c) Since 1 lb mol = 378.7 std ft^3, the flow rate is
vdot = vdot*60/378.7; //[lb mol/h]
// Heat load in each cooler is
Hl = vdot*Cp*(Tb-Ta) // [Btu/h]
//Total heat loss
Htotal = 3*Hl; //[Btu/h]
//Cooling water requirement
cwr = Htotal/delta_Tw // [lb/h]
