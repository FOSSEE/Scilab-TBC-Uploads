//Example 5_9 page no:199
clc
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
r=sqrt(x^2+y^2);
th=atan(y,x)*180/3.14;
endfunction
Z1=5+(%i*10)
Z2=2-(%i*4)
Z3=1+(%i*3)
Zt=Z1+((Z2*Z3)/(Z2+Z3))
disp(Zt,"the equivalent impedence is(in ohm)")//imaginary term is rounded off
[mag,theta]=rect2pol(real(Zt),imag(Zt))
disp("In polar form")
disp(mag,"magnitude of impedance is (in ohm)")
disp(theta,"angle of impedance is (in degree)")
disp("the values varies slightly with text book hence values are rounded off in text book")
