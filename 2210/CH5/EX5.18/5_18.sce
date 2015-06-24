//Chapter 5, Problem 18
clc
f=100e6                         //frequency in hertz
cp=100e-12                      //capacitance in farad
rp=15e3                         //resistance in ohm

//calculation
qp=2*%pi*f*cp*rp
printf("Quality factor Qp = %.2f",qp)
