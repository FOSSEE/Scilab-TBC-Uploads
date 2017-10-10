//Example 3.1(a)
clc;
Rm=100;            //Internal resistance
Im=1*10^-3;        //Full Scale deflection current
I=100*10^-3;       //Total current
Rsh=Im*Rm/(I-Im);  //Shunt resistance
printf('\nValue of Shunt resistance = %.2f ohm\n',Rsh)