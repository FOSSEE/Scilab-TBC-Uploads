//Example 3.4(b)
clc;
Rm=1000;                //Internal resistance
Im=100*10^-6;           //Full Scale deflection current

//Case I: For Range 0-10 mA
I10=10*10^-3;
n=I10/Im;
Rsh1=Rm/(n-1);

//Case II: For Range 0-100 mA
I100=100*10^-3;
Rsh2=Im*(Rm+Rsh1)/I100;

//Case III: For Range 0-1A
I1A=1;
Rsh3=Im*(Rm+Rsh1)/I1A;

//Now From Circuit Observation
Rc=Rsh3;
Rb=Rsh2-Rsh3;
Ra=Rsh1-Rsh2;

printf('\nValue of shunt Ra = %.3f ohm\n',Ra)
printf('\nValue of shunt Rb = %.3f ohm\n',Rb)
printf('\nValue of shunt Rc = %.3f ohm\n',Rc)