clc;
clear;

printf("\n Example 9.21\n");

sigma=5.67e-8;
T=[1000 500 300];//tempertaure of surfaces
//Taking surface 1 as the heater, surface 2 as the heated plate and surface 3 
//as an imaginary enclosure
A=[1.07 1.07 0.628];//Array of area of surfaces
e=[0.75 0.50 1.0];//Array of emissivity of the surfaces
r=[0.250 0.50];// Array of radius of two surfaces
//X is ratio of area to radius(A/r)
//Y = A*e/r
L=0.2; //distance between two discs
for i=1:2
    X(i)=A(i)/r(i);
    Y(i)=A(i)*e(i)/r(i);
    R(i)=r(i)/L;
end

F11=0;
F22=0;
S=1+(1+R(2)^2)/(R(2)^2);
F12=0.5*(S-(S^2-4*(r(2)/(2*r(1)))^2)^0.5);
A1_F11=0;
A2_F22=0;
A1_F12=A(1)*F12;
A1_F13=A(1)-(A(1)*F11+A(2)*F12);
//for surface 2:
A2_F21=A1_F12;
A2_F23=A1_F13;
//for surface 3:
//By reciprocity rule
A3_F31=A1_F13;
A3_F32=A2_F23;
A3_F33=A(3)-(A3_F31+A3_F32);

//From equation 9.112:
for i=1:3
    E_b(i)=sigma*T(i)^4/1000;
end

//Since surface 3 is a black body
q_o3=E_b(3);
//From equations 9.157 and 9.158:
//we get

function [f]=F(x)
    f(1)=(A1_F11-A(1)/r(1))*x(1)+A2_F21*x(2)+A3_F31*q_o3+E_b(1)*A(1)*e(1)/r(1);
    f(2)=(A1_F12*x(1))+((A2_F22-A(2)/r(2))*x(2))+E_b(2)*A(2)*e(2)/r(2);
    funcprot(0);
endfunction

x=[0 0];
q_o=fsolve(x,F);

//From equation 9.140:
Q1=(A(1)*e(1)/r(1))*(E_b(1)-q_o(1));
Q2=(A(2)*e(2)/r(2))*(E_b(2)-q_o(2));
printf("\n Power input to the heater = %.1f kW",Q1);
printf("\n The rate of heat transfer to the plate = %.2f kW",Q2);
printf("\n where the negative sign indicates heat transfer to the plate")