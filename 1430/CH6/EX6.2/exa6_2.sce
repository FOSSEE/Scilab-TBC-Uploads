// Example 6.2
// Calculations with Complex Numbers
A=complex(8,3); 
B=complex(0,100);
C=complex(3,-4);
// Since we need to compute D= A+B/C
T=B/C;
D=A+T;
mag= abs(D);
theta_d=atan(imag(D),real(D))
disp(D,"In rectangular form=");
disp("In polar form=");
disp(mag,"Magnitude");
disp((theta_d*180)/%pi,"Phase angle(in degree)="); // Conversion from radian to
// degree
