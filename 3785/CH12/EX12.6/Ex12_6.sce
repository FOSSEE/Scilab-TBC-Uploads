// Example 12_6
clc;funcprot(0);
// Given data
a_1=347.2;// m/s
p_1=1*10^5;// Pa
r=1.4;// The specific heat ratio
V_p=100;// The velocity of piston in m/s

// Calculation
C=((r+1)*V_p)/(2*a_1);
function[X]=machnumber(y)
    X(1)=y(1)^2-(C*y(1))-1;
endfunction
y=[1];
M_1=fsolve(y,machnumber);// The shock Mach number
V_s=M_1*a_1;// The shock speed in m/s
p_2=(((2*r*M_1^2)-(r-1))/(r+1))*p_1;// The pressure on the piston face in Pa
printf("\nThe shock Mach number,M_1=%1.3f \nThe shock speed,V_s=%3.1f m/s \nThe pressure on the piston face,p_2=%1.2e Pa",M_1,V_s,p_2);
