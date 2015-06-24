//Chapter-2, Example 2.16, Page 2.30
//=============================================================================
clc
clear

//INPUT DATA
N1=400;//Number of turns in the primary
N2=100;//Number of turns in the secondary
Io=4;//No load current in A
qo=0.3;//No load current power factor 
I2=120;//Secondary current in A
q2=0.8;//Secondary current power factor

//CALCULATIONS
K=(N2/N1);//Turn ratio
I2i=(K*I2);//Secondary current in A
I2ic=complex((I2i*q2),(I2i*sind(acosd(q2))));//Ixi in complex form
Ioc=complex((Io*qo),(Io*sind(acosd(qo))));//Ixi in complex form
Iic=(I2ic+Ioc);//Primary current in complex form
a1=sqrt((real(Iic))^2+(imag(Iic))^2);
a2=atand(imag(Iic)/real(Iic));
q=cosd(a2);//Phase angle in degree

//OUTPUT
mprintf('Current taken by the primary is %3.2f A and power factor is %3.2f',a1,q)

//=================================END OF PROGRAM==============================
