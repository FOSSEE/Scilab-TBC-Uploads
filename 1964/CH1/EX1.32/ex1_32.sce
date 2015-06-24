//Chapter-1, Example 1.32, Page 45
//=============================================================================
clc;
clear;
//INPUT DATA
V=24;//supply voltage of battery in volts
Rab=13;//resistance between A and B points in ohms
Rbc=11;//resistance between B and C points in ohms
Rbe=18;//resistance between B and E points in ohms
Rce=14;//resistance between C and E points in ohms
Red=9;//resistance between E and D points in ohms
Rcd=5;//resistance between C and D points in ohms
Rae=22;//resistance between A and E points in ohm
Rx=Rae;
Ry=Rbe;
Raf=1;//resistance between A and F points in ohms
//CALCULATIONS 
Rce=((Rcd+Red)*(Rce))/(Rcd+Red+Rce);//equivalent resistance of Rce in ohms
Rbe=((Rbc+Rce)*(Rbe))/(Rbc+Rce+Rbe);//equivalent resistance of Rbe in ohms
Rae=((Rab+Rbe)*(Rae))/(Rab+Rbe+Rae);//equivalent resistance of Rae in ohms
RT=Rae+Raf;//total equivalent circuit resistance in ohms
Iaf=V/RT;//current through resistance Raf in A
Vae=V-(Iaf*Raf);//P.D across AE in volts
Iae=Vae/Rx;//current in AE in A
Iab=Iaf-Iae;//current in AB in A
Vab=Rab*Iab;//P.D across AB in volts
Vbe=Vae-Vab;//Voltage across branch BE in volts
Pbe=((Vbe)^2)/(Ry);//power absorbed in branch Be in watts
Ibe=Vbe/Ry;//current in BE in A
Ibc=Iab-Ibe;//current in BC in A
Icde=(Ibc)/(2);//current in CDE in A
Vcd=Icde*(Rcd);//P.D across CD
//OUTPUT
mprintf("Current in branch AF is %d A \n Power absorbed in BE is %1.1f watts \n P.D across CD is %1.2f volts ",Iaf,Pbe,Vcd);
 //=================================END OF PROGRAM==============================
