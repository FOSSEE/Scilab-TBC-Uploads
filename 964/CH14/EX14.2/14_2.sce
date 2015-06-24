clc;
clear;
function z=f(x,y)
    z=x*y*y
endfunction
p1=[2 2];
elevation=f(p1(1),p1(2));
dfx=p1(1)*p1(1);
dfy=2*p1(1)*p1(2);
theta=atan(dfy/dfx);
slope=(dfx^2 + dfy^2)^0.5;
disp(elevation,"Elevation:")
disp(theta,"Theta:")
disp(slope,"slope:")