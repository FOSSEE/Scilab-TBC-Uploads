// Example 12_12
clc;clear;funcprot(0);
//Given values
Ma_1=2.0;// Mach number
P_1=230;// kPa
delta=10;// degree
//Properties
k=1.4//The specific heat ratio

//Calculation
theta=delta;
v_1=(sqrt((k+1)/(k-1))*atand(sqrt(((k-1)*(Ma_1^2-1))/(k+1))))-atand(sqrt(Ma_1^2-1));// degree
v_2=theta+v_1;// degree
// Ma_2=y(1);
function[X]=Machnumber(y);
    X(1)=((sqrt((k+1)/(k-1))*atand(sqrt(((k-1)*(y(1)^2-1))/(k+1))))-atand(sqrt(y(1)^2-1))-v_2);
endfunction
y=[1];
z=fsolve(y,Machnumber);
printf('The downstream Mach number Ma_2=%0.3f\n',z(1));
Ma_2=z(1);
P_2=((((1+(((k-1)/2)*Ma_2^2)))^(-k/(k-1)))/(((1+(((k-1)/2)*Ma_1^2)))^(-k/(k-1))))*(P_1);
printf('The downstream pressure,P_2=%0.0f kPa\n',P_2);
