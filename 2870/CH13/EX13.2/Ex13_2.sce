clc;clear;
//Example 13.2

//given data
NN2=2;
NCO2=6;
Tm=300;
Pm=15000;

//constants used
Ru=8.314;//in kJ/kmol - K

//calculations

//part - a
Nm=NN2+NCO2;
Vm=Nm*Ru*Tm/Pm;
disp(Vm,'the volume of the tank on the basis of the ideal-gas equation of state in m^3');

//part - b
//from Table A-1
//for nitrogen
TcrN=126.2;
PcrN=3390;
//for Carbondioxide
TcrC=304.2;
PcrC=7390;
yN2=NN2/Nm;
yCO2=NCO2/Nm;
Tcr=yN2*TcrN+yCO2*TcrC;
Pcr=yN2*PcrN+yCO2*PcrC;
Tr=Tm/Tcr;
Pr=Pm/Pcr;
//from Fig A-15b
Zm=0.49;
Vm=Zm*Nm*Ru*Tm/Pm;
disp(Vm,'the volume of the tank on the basis Kay’s rule in m^3');

//part - c
//for nitrogen
TrN=Tm/TcrN;
PrN=Pm/PcrN;
//from Fig A-15b
Zn=1.02;
//for Carbondioxide
TrC=Tm/TcrC;
PcrC=Pm/PcrC;
//from Fig A-15b
Zc=0.3;
Zm=yN2*Zn+yCO2*Zc;
Vm=Zm*Nm*Ru*Tm/Pm;
disp(Vm,'the volume of the tank on the basis compressibility factors and Amagat’s law in m^3');

//part - d
VRN=(Vm/NN2)/(Ru*TcrN/PcrN);
VRC=(Vm/NCO2)/(Ru*TcrC/PcrC);
//from Fig A-15b
Zn=0.99;
Zc=0.56;
Zm=yN2*Zn+yCO2*Zc;
Vm=Zm*Nm*Ru*Tm/Pm;
//When the calculations are repeated we obtain 0.738 m3 after the second iteration, 0.678 m3 after the third iteration, and 0.648 m3 after the fourth iteration.
Vm=0.648;
disp(Vm,'compressibility factors and Dalton’s law the volume of the tank on the basis in m^3');
