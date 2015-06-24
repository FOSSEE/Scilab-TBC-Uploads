
//To Determine the resistance to be inserted for various cases
//Page 203
clc;
clear;

N1=1500; //Rated Speed
N2=1200; //Reduced Speed
rs=N2/N1; //Ratio of final speed to original speed
eff=80/100; //Efficiency
Pr=10*(10^3); //Power Rating
V=250; //Voltage supply
Il=Pr/(V*eff); //Full Load Current
Rf=110; //Field Resistance
Ra=0.25; //Armature Resistance
If=V/Rf; //Field Current
Ia1=Il-If; //Load Current
Eb=V-(Ia1*Ra); //Back EMF
Eb1200=Eb*rs; //Back EMF for 1200 rpm

deff('x=Res(y)','x=((V-Eb1200)/y)') //Function to calculate the Resistance of various cases
//Torque directly proportional to current
Ia2=(rs)*Ia1; // Torque directly propostional to speed
Ia3=(rs^2)*Ia1; //Torque directly proportional to square of the speed

//Resistances for Various Cases
R1=Res(Ia1)-Ra;
R2=Res(Ia2)-Ra;
R3=Res(Ia3)-Ra;

deff('x=Pow(y)','x=((V-Eb1200)/y)*(y^2)/1000') //Function to Find Power Loss
//Power Lost in kW for various cases
P1=Pow(Ia1);
P2=Pow(Ia2);
P3=Pow(Ia3);

printf('The External Resistances to be connected and the power loss for\n')
printf('a) The Load Torque is independent of the speed : %g ohm and %g kW respectively\n',R1,P1)
printf('b) The Load Torque is directly proportional to the speed : %g ohm and %g kW respectively\n',R2,P2)
printf('c) The Load Torque is directly proportional to square of the speed : %g ohm and %g kW respectively\n',R3,P3)
