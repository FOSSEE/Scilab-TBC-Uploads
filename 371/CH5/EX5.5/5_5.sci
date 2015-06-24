//Line commuted Converters//
//Example 5.5//
Id=150;//rated dc current in amperes//
E2=415;//AC line voltage in volts//
Emax=sqrt(2)*E2;
C=cos(16*%pi/180);//cosine value of the commutational angle//
printf('\ncosine value of the commutational angle=C=%f',C);
Xt=(1-C)*E2*sqrt(3)/Id;//effective reactance of the thyristor in ohms//
printf('\neffective reactance of the thyristor=Xt=%fohms',Xt);

