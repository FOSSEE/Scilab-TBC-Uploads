// Example 1.11 page no-33
clear
clc

l=2 //cm
D=18 //cm
s=0.5 //cm

//(a)
va1=500 //volts
ds1=l*D/(2*s*va1)//Deflection Sensitivity
//(b)
va2=1000 //Volts
ds2=l*D/(2*s*va2)
//(c)
va3=1500 //Volts
ds3=l*D/(2*s*va3)
printf("\n(a)Va=%dV\nDeflection Sensitivity S_E=%.3f cm/V \n\n(b)Va=%dV\nDeflection Sensitivity S_E=%.3f cm/V\n\n(c)Va=%dV\nDeflection Sensitivity S_E=%.3f cm/V",va1,ds1,va2,ds2,va3,ds3)
