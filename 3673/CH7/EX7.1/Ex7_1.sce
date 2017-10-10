//Example 7_1 page no:253
clc
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
r=sqrt(x^2+y^2);
th=atan(y,x)*180/3.14;
endfunction
mat=[6+(%i*4),-6;-6,8+(%i*3)]
val=[5,0]
I=inv(mat)'*val'
I1=I(1,1)
I2=I(2,1)
disp("the current in loop 1 is ")
[mag,theta]=rect2pol(real(I1),imag(I1))
disp(mag,"Magnitude of current is (in A)")
disp(-theta,"Phase angle of current is (in degree)")
disp("the current in loop 2 is ")
[mag,theta]=rect2pol(real(I2),imag(I2))
disp(mag,"Magnitude of current is (in A)")
disp(-theta,"Phase angle of current is (in degree)")
