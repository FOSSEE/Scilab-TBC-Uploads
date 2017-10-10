//Example 3.2
clc;
Rm=100;            //Internal resistance
Im=1*10^-3;        //Full Scale deflection current

//Case I: For Range 0-10 mA
I1=10*10^-3;       //Total current
Rsh1=Im*Rm/(I1-Im);  //Shunt resistance
printf('\nValue of Shunt resistance for range 0-10 mA = %.2f ohm\n',Rsh1)

//Case II: For Range 0-20 mA
I2=20*10^-3;       //Total current
Rsh2=Im*Rm/(I2-Im);  //Shunt resistance
printf('\nValue of Shunt resistance for range 0-20 mA = %.2f ohm\n',Rsh2)

//Case III: For Range 0-50 mA
I3=50*10^-3;       //Total current
Rsh3=Im*Rm/(I3-Im);  //Shunt resistance
printf('\nValue of Shunt resistance for range 0-50 mA = %.2f ohm\n',Rsh3)