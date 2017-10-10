//Example 3.3
clc;
Rm=500;                //Internal resistance
Im=10*10^-3;           //Full Scale deflection current

//Case I: For Range 0-1 A
I1=1;                  //Total current
Rsh1=Im*Rm/(I1-Im);    //Shunt resistance
printf('\nValue of Shunt resistance for range 0-1 A = %.2f ohm\n',Rsh1)

//Case II: For Range 0-5 A
I2=5;                  //Total current
Rsh2=Im*Rm/(I2-Im);    //Shunt resistance
printf('\nValue of Shunt resistance for range 0-5 A = %.3f ohm\n',Rsh2)

//Case III: For Range 0-10 A
I3=10;                 //Total current
Rsh3=Im*Rm/(I3-Im);    //Shunt resistance
printf('\nValue of Shunt resistance for range 0-10 A = %.3f ohm\n',Rsh3)