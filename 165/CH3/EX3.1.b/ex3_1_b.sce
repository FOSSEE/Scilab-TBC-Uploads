//Example 3.1(b)
clc;
Rm=500;            //Internal resistance
Im=100*10^-6;      //Full Scale deflection current
I=100*10^-3;       //Total current
//The shunt can also be determined using
//multiplying factor(n) that relates total current
//and Full Scale deflection current as n=I/Im
n=I/Im;            //Multiplying factor
Rsh=Rm/(n-1);      //Shunt resistance
printf('\nValue of Shunt resistance = %.2f ohm\n',Rsh)