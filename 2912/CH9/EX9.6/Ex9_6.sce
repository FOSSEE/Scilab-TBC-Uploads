// chapter 9
// example 9.6
// find intrinsic concuctivity and doping conductivity
// page 274
clear;
clc;
// given
ni=1.5E16; // in /m^3 (intrinsic carrier density)
ue=0.13; // in m^2/(V-s) (electron mobilities)
uh=0.05; // in m^2/(V-s) (hole mobilities)
e=1.6E-19; // in C (charge of electron)
ne=5E20; // in /m^3 (concentration of donor type impurity)
nh=5E20; // in /m^3 (concentration of acceptor type impurity)
// calculate
// part-i
sigma=ni*e*(ue+uh); // calculation of intrinsic conductivity
printf('\nThe intrinsic conductivity for silicon is  %1.2E (ohm-m)^-1',sigma);
// part-ii	
// since 1 donor atom is in 1E8 Si atoms, hence holes concentration can be neglected
sigma=ne*e*ue; // calculation of conductivity after doping with donor type impurity
printf('\n\nThe conductivity after doping with donor type impurity is  %.1f (ohm-m)^-1',sigma);
// part-iii
// since 1 acceptor atom is in 1E8 Si atoms, hence electron concentration can be neglected
sigma=nh*e*uh; // calculation of conductivity after doping with acceptor type impurity
printf('\n\nThe conductivity after doping with acceptor type impurity is  %.f (ohm-m)^-1',sigma);
// Note: In question the value of  ne and nh has been misprinted as 5E28 atoms/m^3 which is too big but the solution has used the correct value 5E20 atoms/m^3. I have also used this value. 
