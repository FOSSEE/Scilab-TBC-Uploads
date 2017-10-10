//Example 5_10 page no:200
clc
funcprot(0);
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
r=sqrt(x^2+y^2);
th=atan(y,x)*180/3.14;
endfunction
V=20//input voltage
f=50//frequency in Hz
R1=10//resistance in ohm
R2=20//resistance in ohm
L=0.1//inductance in henry
Xl=2*%pi*f*L*%i
Zt=R1+((R2*Xl)/(R2+Xl))
disp(Zt,"impedance is (in ohm)")
[mag,theta]=rect2pol(real(Zt),imag(Zt))
disp("In polar form")
disp(mag,"magnitude is (in ohm)")
disp(theta,"angle is (in degree)")
It=V/Zt
disp(It,"the current is (in A)")
[mag,theta]=rect2pol(real(It),imag(It))
disp("In polar form")
disp(mag,"magnitude is (in A)")
disp(theta,"angle is (in degree)")
disp(-theta,"the phase angle between current and voltage is(in degree)")
