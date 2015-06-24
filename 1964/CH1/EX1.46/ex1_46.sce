//Chapter-1, Example 1.46, Page 52
//=============================================================================
clc;
clear;
//INPUT DATA
Ra=4;//Resistance in ohms
Rb=9;//Resistance in ohms
Rc=18;//Resistance in ohms
Rd=2;//Resistance in ohms
Re=7;//Resistance in ohms
Rf=15;//Resistance in ohms
V=125;//voltage in volts
//CALCULATIONS 
R1=((Ra)+((Rb*Rc)/(Rc+Rb)));//resistance in branch1 in ohms
R2=((Rd)+(Re));//resistance in branch2 in ohms
Reff=((R1*R2)/(R1+R2))+Rf;//effective resistance in ohms
I=V/Reff;//current in Rf resistor in Amps
I1=(I)*(Rb)/(Rb+R1);//current in resistor Ra in Amps
Ix=(I1)*(Rb/(Rb+Rc)) ;//current in resistor Rc in Amps
V2=(Ix)*(Rc);//voltage across Rc in volts
I2=I-I1;//current across Re in Amps
P4=(I2)^2*Re;//power dissipated across Re in W
//OUTPUT
mprintf("current across 15 ohm resistor is %1.2f amps \n voltage across 18 ohm resistor is %dV \n power dissipated in 7 ohm resistor is %2.1f Watts ",I,V2,P4);
 //=================================END OF PROGRAM==============================
