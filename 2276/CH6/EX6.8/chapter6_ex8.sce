clc
clear

//input
y1=0.01-(%i*0.03);//first admittance in mho
y2=0.05+(%i*0);//second admittance in mho
y3=%i*0.05;//third admittance in mho
//three admittances are connected in parallel
v=250;//supply voltage in volts

//calculations
y=y1+y2+y3;//total admittance in mho
Y=(((real(y)^2)+(imag(y)^2)))^0.5;//magnitude of total admittance in mho
phi=(180/%pi)*atan((imag(y))/(real(y)));//phase angle in degrees
i=v*Y;//current in amperes

//output
mprintf('the total current is %3.1f A leading on the voltage by %3.1f degrees',i,phi)
