clc
clear

//input
v=415;//3 phase supply voltage in volts
f=50;//supply frequency in hertz
//system is loaded with three star connected coils and three star connected resistors
ic=10;//current taken by each of the coils in amperes lagging by 60 degrees
ir=8;//current taken by each of the resistors in amperes
phi=(60*%pi)/180;//lagging phase angle in radians

//calculations
ii=ir+(ic*cos(phi));//sum of in phase components in amperes
iq=(ic*sin(phi));//sum of quadrature components in amperes
i=((ii^2)+(iq^2))^0.5;//total current in amperes
PHI=(180/%pi)*acos(ii/i);//phase angle in degrees

//ouput
mprintf('the total  line current is %3.1f A lagging on the relative phase voltage by %3.1f degrees',i,PHI)
