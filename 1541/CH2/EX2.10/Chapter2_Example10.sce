//Chapter-2, Example 2.10, Page 2.17
//=============================================================================
clc
clear

//INPUT DATA
Io=12;//Primary no load current in A
cosqo=0.25;//No load power factor 
I2=220;//Secondary load current in A
cosq2=0.8;//Secondary power factor
K=(1/5);//Turn ratio

//CALCULATIONS
qo=acosd(cosqo);//phase angle in degree
q2=acosd(cosq2);//Phase angle in degree
Ioc=complex((Io*cosqo),(Io*sind(qo)));//Io value in complex form
I2i=complex((K*I2*cosq2),(K*I2*sind(q2)));//I2i value in complex form
I1=(Ioc+I2i);//Primary current in A
X=sqrt((real(I1))^2+(imag(I1))^2);//Primary current in A
Y=cosd(atand(imag(I1)/real(I1)));//Power factor

//OUTPUT
mprintf('Primary current is %3.1f A and Primary power factor is %3.2f',X,Y)

//=================================END OF PROGRAM==============================
