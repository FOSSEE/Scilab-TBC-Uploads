clear;
//clc();
function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

mag=120;
theta=60;
[r,i]=d(mag,theta);
z=complex(r,i);

mag=5*10^(-3);
theta=90;
[r,i]=d(mag,theta);
y=complex(r,i);
A=1 + 0.5*z*y;
printf('the value of A is:');
disp(A)
B=z;
printf('the value of B is:');
disp(B)
C=y*(1+ 0.25*(z)*(y));
printf('the value of C is:');
disp(C)
D=A;
printf('the value of D is:');
disp(D)
