clc
I2=poly(0,'I2')//Defining I2
R2=poly(0,'R2')//Defining R2
R=poly(0,'R')//Defining R
ra=(R2-0.3*R2)/0.3//Equation drawn by neglecting stator impedance
Id=I2*sqrt(3/2)//From Copper Losses
R=2*ra

disp(R,'value of resistance = ')
