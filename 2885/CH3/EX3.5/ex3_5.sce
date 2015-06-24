//Find current through diode
clear;
clc;
//soltion
//given
Vt=0.3;//V//Threshold voltage
rf=25;//ohm// average resistance

//assuming it to be ideal
//from fig 3.19
Vaa=10;//V//supply
R1=45;//ohm
R2=5;//ohm
Vab=Vaa*R2/(R1+R2);
//Vab>Vt therefore diode is forward bias and no current flow through R2
Idi=Vaa/R1;       //for ideal
printf("The diode current (for ideal) is %.0f mA\n",Idi*1000);

//assuming it to be real
//Thevenin's equivalent circuit parameters of fig 3.19
Vth=Vaa*R2/(R1+R2);
Rth=R1*R2/(R1+R2);
Idr=(Vth-Vt)/(Rth+rf);          //for real
printf("The diode current (for real) is %.1f mA",Idr*1000);
