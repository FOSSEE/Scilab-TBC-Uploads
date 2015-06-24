//Chapter-5, Example 5.44, Page 209
//=============================================================================
clc
clear
//INPUT DATA
Z1=(6-((%i)*8));//impedance1 in ohms
Z2=(16+((%i)*12));//impedance2 in ohms
I1=(12+((%i)*16));//current in A
//CALCULATIONS
V=I1*Z1;//applied voltage in volts
I2=V/(Z2);//current in other branch in A
mprintf("current in other branch in Amps")
disp(I2);
I=I1+I2;//total current in A
mprintf("total current in Amps");
disp(I);
i1=abs(I);//magnitude in A
i2=atan((imag(I)/real(I)));
P=V*i1*cos(i2);//power consumed in circuit
mprintf("Thus voltage applied and power consumed are %d V and %d W respectively",V,P);
//=================================END OF PROGRAM======================================================================================================
