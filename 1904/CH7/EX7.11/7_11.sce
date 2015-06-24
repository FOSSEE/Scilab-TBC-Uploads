//To Determine the Line to Line Voltage at point a
//Page 347
clc;
clear;

//Loads in kVA
Sbc=3000; //Load Along bc
Sd=2000; //Load At Point d
S0a=Sbc+Sd; //Total Load
Sab=Sbc/2; //Load along ab

//Cable Constants
K0a=0.0005; //For 0 to a
Kab=0.0010; //For a to b
Kac=0.0010; //For a to c
Kad=0.0010; //For a to d

//Length
l0a=1.0; //From 0 to a
lab=2;//From a to b
lad=2; //From a to d

//Voltage Drops At Specific Points
VDa=K0a*S0a*l0a;
VDb=(Kab*Sab*lab/2)+VDa;
VDc=VDb;
VDd=(Kad*Sd*lad)+VDa;

//To determine the Voltages at Point a
Vll=12650; //Line to Line Voltage
Vln=7300; //Line to Neutral Voltage

Valn=Vln-(VDa*Vln/100);
Vall=Vll-(VDa*Vll/100);

printf('\na) The Voltage Drops at:\n')
printf('Point a is %g percent\n',VDa)
printf('Point b is %g percent\n',VDb)
printf('Point c is %g percent\n',VDc)
printf('Point d is %g percent\n',VDd)
printf('b) The Voltages VaL-N is %g V and VaL-L is %g V\n',Valn,Vall)


