//To Determine system parameters for various stabilities
//Page 562
clc;
clear;
St=5*(10^6); //Capacity of Transformer
Zt=%i*0.065; //Transformer Reactance
SB3phi=1*(10^6); //3 Phase Power Base
VBLL=69*(10^3); //Line to line voltage
VBLLn=12.47*(10^3); //Line To line voltage
Vf=1; //Per Unit Value of Voltage
Zb=(VBLL^2)/SB3phi; //Base Impedance

//Zckt and Zf and Zt are Zero for Bus 1
//Zckt and Zf are Zero for Bus 2
//Power Generation of the system
SMax=600*(10^6); //Maximum
SMin=360*(10^6); //Minimum

Xt=0.065; //Transformer Reactance in per unit
MZsysmax=(VBLL^2)/SMax; //System Impedance at Maximum Power Generation
Ib=SB3phi/(sqrt(3)*VBLL); //Base Current
Zsysmaxpu=MZsysmax*exp(%i*%pi*90/180)/Zb; //System Impedance Phasor
//Three Phase Fault Current
If3phimaxpu1=abs(Vf/(Zsysmaxpu));
If3phimax1=If3phimaxpu1*Ib;
Sf3phimax1=sqrt(3)*VBLL*If3phimax1/1000000;

//Line to Line Fault Current
IfLLmax1=0.866*If3phimax1;
SfLLmax1=VBLL*IfLLmax1/1000000;

//Line to Ground Fault
IfLGmaxpu1=abs(3*Vf/((2*Zsysmaxpu)));
IfLGmax1=IfLGmaxpu1*Ib;
SfLGmax1=VBLL*IfLGmax1/(1000000*sqrt(3));

Stn=SB3phi; //Numreical Value is Equal
Ztn=Zt*(Stn/St); //New Per Unit Transformer Reactance
//New Base Values
Zbn=(VBLLn^2)/SB3phi;
Ibn=Stn/(sqrt(3)*VBLLn);

//Three Phase Fault Current
If3phimaxpu2=abs(Vf/(Zsysmaxpu+Ztn));
If3phimax2=If3phimaxpu2*Ibn;
Sf3phimax2=sqrt(3)*VBLLn*If3phimax2/1000000;

//Line to Line Fault Current
IfLLmax2=0.866*If3phimax2;
SfLLmax2=VBLLn*IfLLmax2/1000000;

//Line to Ground Fault
IfLGmaxpu2=abs(3*Vf/((2*Zsysmaxpu)+(3*Ztn)));
IfLGmax2=IfLGmaxpu2*Ibn;
SfLGmax2=VBLLn*IfLGmax2/(1000000*sqrt(3));

//Minimum Power Generation
MZsysmin=(VBLL^2)/SMin; //System Impedance at Maximum Power Generation
Ib=SB3phi/(sqrt(3)*VBLL); //Base Current
Zsysminpu=MZsysmin*exp(%i*%pi*90/180)/Zb; //System Impedance Phasor
//Three Phase Fault Current
If3phiminpu1=abs(Vf/(Zsysminpu));
If3phimin1=If3phiminpu1*Ib;
Sf3phimin1=sqrt(3)*VBLL*If3phimin1/1000000;

//Line to Line Fault Current
IfLLmin1=0.866*If3phimin1;
SfLLmin1=VBLL*IfLLmin1/1000000;

//Line to Ground Fault
IfLGminpu1=abs(3*Vf/((2*Zsysminpu)));
IfLGmin1=IfLGminpu1*Ib;
SfLGmin1=VBLL*IfLGmin1/(1000000*sqrt(3));

Stn=SB3phi; //Numreical Value is Equal
Ztn=Zt*(Stn/St); //New Per Unit Transformer Reactance
//New Base Values
Zbn=(VBLLn^2)/SB3phi;
Ibn=Stn/(sqrt(3)*VBLLn);

//Three Phase Fault Current
If3phiminpu2=abs(Vf/(Zsysminpu+Ztn));
If3phimin2=If3phiminpu2*Ibn;
Sf3phimin2=sqrt(3)*VBLLn*If3phimin2/1000000;

//Line to Line Fault Current
IfLLmin2=0.866*If3phimin2;
SfLLmin2=VBLLn*IfLLmin2/1000000;

//Line to Ground Fault
IfLGminpu2=abs(3*Vf/((2*Zsysminpu)+(3*Ztn)));
IfLGmin2=IfLGminpu2*Ibn;
SfLGmin2=VBLLn*IfLGmin2/(1000000*sqrt(3));

printf('\na) For Maximum Power Generation:\n')
printf('Bus 1\n')
printf('3 phase fault current is %g A and %g MVA\n',If3phimax1,Sf3phimax1)
printf('Line to Line fault current is %g A and %g MVA\n',IfLLmax1,SfLLmax1)
printf('Line to ground fault current is %g A and %g MVA\n',IfLGmax1,SfLGmax1)
printf('Bus 2\n')
printf('3 phase fault current is %g A and %g MVA\n',If3phimax2,Sf3phimax2)
printf('Line to Line fault current is %g A and %g MVA\n',IfLLmax2,SfLLmax2)
printf('Line to ground fault current is %g A and %g MVA\n',IfLGmax2,SfLGmax2)
printf('\nb) For Minimum Power Generation:\n')
printf('Bus 1\n')
printf('3 phase fault current is %g A and %g MVA\n',If3phimin1,Sf3phimin1)
printf('Line to Line fault current is %g A and %g MVA\n',IfLLmin1,SfLLmin1)
printf('Line to ground fault current is %g A and %g MVA\n',IfLGmin1,SfLGmin1)
printf('Bus 2\n')
printf('3 phase fault current is %g A and %g MVA\n',If3phimin2,Sf3phimin2)
printf('Line to Line fault current is %g A and %g MVA\n',IfLLmin2,SfLLmin2)
printf('Line to ground fault current is %g A and %g MVA\n',IfLGmin2,SfLGmin2)

//Note that 0.00166666666 is not rounded as 0.0017
//Hence you find all the answers close by
