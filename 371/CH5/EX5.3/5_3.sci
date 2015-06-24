//Line commuted Converters//
//Example 5.3//
E2=415;//input voltage in volts//
Edc=1.17*E2;//dc terminal voltage in volts//
Emax2=sqrt(2)*E2;//maximum value of dc voltage//
Z=2;//total impedance in ohms//
printf('maximum value of dc voltage=Emax2=%fvolts',Emax2);
Irms=Emax2*sqrt(%pi/3+sqrt(3)/4)/(2*%pi*Z);
printf('\nrms current through the device=Irms=%famps',Irms);