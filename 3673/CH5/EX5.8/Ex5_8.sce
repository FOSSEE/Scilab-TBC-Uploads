//Example 5_8 page no:198
clc
funcprot(0)
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
r=sqrt(x^2+y^2);
th=atan(y,x)*180/3.14;
endfunction
function[x,y]=pol2rect(r,theta)
    x=r*cosd(theta)
    y=r*sind(theta)
endfunction
[Rr,Ri]=pol2rect(50,0)
R=Rr+(%i*Ri)
[Xlr,Xli]=pol2rect(30,90)
Xl=Xlr+(%i*Xli)
[Vr,Vi]=pol2rect(20,0)
V=Vr+(%i*Vi)
Ir=V/R
Il=V/Xl
It=Ir+Il
[mag,theta]=rect2pol(real(It),imag(It))
disp("total current is")
disp(It)
disp("total current in polar form is")
disp(mag,"the magnitude of total current is (in A)")
disp(theta,"the angle of total current is (in degree)")//in textbook current value Il is roundoff so the angle vary slightly
Z=V/It
[mag,theta]=rect2pol(real(Z),imag(Z))
disp("total impedence in polar form")
disp(mag,"magnitude of impedance is (in ohm)")
disp(theta,"angle of impedance is (in degree)")//in textbook current value Il is roundoff so the angle vary slightly
disp("the values varies slightly with text book hence values are rounded off in text book")

//the values varies slightly with text book hence values are rounded off in text book
