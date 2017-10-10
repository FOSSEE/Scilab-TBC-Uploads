// Example 12_5
clc;funcprot(0);
// Given data
r=1.3;// The specific heat ratio
V_e=0.90;// Exit velocity in % of maximum possible velocity

// Calculation
V_mebya_s=sqrt(2/(r-1));// The maximum possible exit velocity
function[X]=machnumber(y)
    X(1)=(V_e*V_mebya_s)-(y(1)*(1+((0.3*y(1)^2)/2))^(-1/2));
endfunction
y=[1];
M_e=fsolve(y,machnumber);// The Mach number of the exit flow
A_ebyA_c=M_e*((2/(r+1))*((1+(((r-1)/2)*(M_e)^2))))^((r+1)/(2*(r-1)));// The area ratio
D_r=sqrt(A_ebyA_c);// Corresponding diameter ratio
printf("\nThe exit Mach number,M_e=%1.3f \nThe area ratio=%1.3e \nThe diameter ratio=%2.2f",M_e,A_ebyA_c,D_r)
