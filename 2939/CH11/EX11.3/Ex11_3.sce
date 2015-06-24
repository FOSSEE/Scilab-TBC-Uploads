
//Ex11_3

clc;

//Given:
//Atomic absorption coefficients for diferent atoms in b/atom
O=1.69;
Na=2.32;
P=3.17;
Ca=4.22;
I=12.03
// 1 b=10^(-24) cm^2


//solution:
//mass absorption coefficient for the given atoms in cm^2/g

uO=(O*10^-24*6.022*10^23)/16;
uNa=(Na*10^-24*6.022*10^23)/23;
uP=(P*10^-24*6.022*10^23)/31;
uCa=(Ca*10^-24*6.022*10^23)/40;
uI=(I*10^-24*6.022*10^23)/127;

// The mass absorption coefficient for the given substance is the sum of the mass absorption coefficients of the atoms present, each atom being weighted in proportion to its mass in the molecule.

//(a) NaI(A1=150)
u1=(uNa*23+uI*127)/150;
//(b) NaIO3 (A2=198)
u2=(uNa*23+uI*127+uO*48)/198;
//(c) Ca(PO3)2 (A3=198)
u3=(uCa*40+uP*62+uO*96)/198;
//(d) Ca3(PO4)2 (A4=310)
u4=(uCa*120+uP*62+uO*128)/310;


printf("The mass absorption coefficient of NaI in cm^2/g is = %f ",u1)
printf("\n \n The mass absorption coefficient of NaIO3 in cm^2/g is = %f ",u2)
printf("\n \n The mass absorption coefficient of Ca(PO3)2 in cm^2/g is = %f ",u3)
printf("\n \n The mass absorption coefficient of Ca3(PO4)2 in cm^2/g is = %f ",u4)

