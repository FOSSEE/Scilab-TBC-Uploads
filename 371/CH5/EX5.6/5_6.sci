//Line commuted Converters//
//Example 5.6//
E2=230;//AC line voltage in volts//
Emax=sqrt(2)*E2;
C=cos(13*%pi/180);//cosine value of the commutational angle//
Xt=0.16;//effective reactance of the thyristor in ohms//
Id=(1-C)*E2*sqrt(3)/Xt;//AC load current in amperes//
printf('AC load current=Id=%famps',Id);

