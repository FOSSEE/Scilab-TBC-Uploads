//Example 13_1
clc;clear;
// given values
b=0.4;// Width in m
v=0.2;// Flow rate in m^3/s
y_1=0.15;// Flow depth in m
g=9.81;// m/s^2

// Calculation
A_c=y_1*b;// m^2
V=(v/A_c);//The average flow velocity in m/s
printf('The average flow velocity,V=%0.2f m/s\n',V);
y_c=(v^2/(g*b^2))^(1/3);// The critical depth  in m
printf('The critical depth for this flow,y_c=%0.3f m\n',y_c);
printf('Therefore, the flow is SUPER CRITICAL since the actual flow depth is y=0.15 m, and y<yc.\n');
Fr=(V*sqrt(g*y_1));// The Froude number
E_s1=y_1+((v^2/(2*g*b^2*y_1^2)));//The specific energy for the given condition in m
//Then the alternate depth is determined E_s1=E_s2; y_2=y(1)
function[X]=depth(y);
    X(1)=(y(1)+((0.2^2)/(2*9.81*0.4^2*y(1)^2)))-0.7163;
endfunction
y=[0.5];
z=fsolve(y,depth);
printf('The alternate depth y_2=%0.2f m\n',z);
