//Line commuted Converters//
//Example 5.8//
E2=415;//input voltage in volts//
Emax=sqrt(2)*E2;//maximum value of dc voltage//
A=%pi/6;//triggering angle in degrees//
Edc=Emax*cos(A)/%pi;//dc output voltage in volts//
printf('dc output voltage=Edc=%fvolts',Edc);