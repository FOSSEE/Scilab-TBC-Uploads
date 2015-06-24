//Example 6
//chapter 39
//clc()
r=1//in m
p=10^3//
m=4*%pi*10^-7//weber/amp-m
c=3*10^8
x=2*%pi
E_m=(1/r)*(sqrt((p*m*c)/x))
disp(E_m,"The value of E in volts/meter=")
B=E_m/c
disp(B,"B in weber/meter^2")
