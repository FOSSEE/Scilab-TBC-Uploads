clc
//Chapter8
//Example8.25, page no 354
//Given
lambda=5//wavelength
Zo=200//Characteristic impedance
Zo1=100//Zo'
ZL=50+(%i*50)// load impedance
l1=0.4*lambda
l2=0.2*lambda
Beta=(2*%pi/lambda)// phase difference
Z2=Zo1*(((ZL*cos(Beta*l2))+(%i*Zo1*sin(Beta*l2)))/((Zo1*cos(Beta*l2))+(%i*ZL*sin(Beta*l2))))//I/p Impedance offered by I2toI1
Z1=Zo*(((Z2*cos(Beta*l1))+(%i*Zo*sin(Beta*l1)))/((Zo*cos(Beta*l1))+(%i*Z2*sin(Beta*l1))))//I/p impedance
mprintf('The sending end (Source end)impedance (Zl)is: '),disp(Z1)



