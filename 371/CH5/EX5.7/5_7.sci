//Line commuted Converters//
//Example 5.7//
E2=230;//input voltage in volts//
Emax=sqrt(2)*E2;//maximum value of dc voltage//
A=%pi/6;
Edc=Emax*(1+cos(A))/(2*%pi);
printf('Average value of dc voltage=Edc=%fvolts',Edc);
Eeff=Emax*sqrt((%pi-A)/(4*%pi)+(sin(2*A)/(8*%pi)));
printf('\nEffective value of voltage=Eeff=%fvolts',Eeff);
R=10;//total impedance in ohms//
Id=Edc/R;
printf('\nLoad current=Id=%famps',Id);
