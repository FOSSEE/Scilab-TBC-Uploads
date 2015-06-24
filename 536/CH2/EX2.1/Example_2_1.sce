clc;

printf("Example 2.1\n");
//For 1 kmol of methane

//(a) PV = 1 * RT, where 
R=8314;
P=60*10^6;
T=320;
Tc=191;
Pc=4.64*10^6;
printf("\n Given\n R=8314 J/kmol K.\n P=60*10^6 N/m^2\n T=320 K;")
printf("\n Tc=191 K \n Pc=4.64*10^6 N/m^2")
V1=8314*T/P;
printf("\n(a)\n Volume of vessel (ideal gas law) = %.4f m^3",V1);


//(b) In van der Waals equation (2.32), the constants may be taken as:
a=27*R^2*Tc^2/(64*Pc);
b=R*Tc/(8*Pc);
printf("\n(b)\n a = %d (N/m^2)*(m^3)^2/(kmol)^2",a);
printf("\n b = %.4f m^3/kmol",b);
//Thus using equation 2.32:
x=poly([0],'x');
p=roots((60*10^6*x^2+a)*(x-0.0427)-(8314*320*x^2));
printf(" \n Volume of vessel(van der waals eq.) = %.3f m^3",p(1,1));


//(c) Tr=T/Tc  ,Pr=P/Pc
Tr=T/Tc;
printf("\n(c)\n Tr = %.2f",Tr);
Pr=P/Pc;
printf("\n Pr = %.2f",Pr);
//Thus from Figure 2.1, 
Z=1.33;
//V = ZnRT/P (from equation 2.31)
V3=Z*R*T/P;
printf("\n Volume of vessel(generalised compressibility-factor chart) = %.4f m^3",V3);