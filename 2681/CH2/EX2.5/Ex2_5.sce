//efficency of kylstron
//given
clc
I2=28d-3//ampere
V2=850//volts
Bc=0.496//beam coupling coefficent
Vd=900//volts
Ib=26d-3//ampere
n=(Bc*I2*V2)/(2*Ib*Vd)
disp(n*100,'the beam efficiency of kylstron in the percentage format')
//ERROR in calcultion of the book the value of Bc is different in question
