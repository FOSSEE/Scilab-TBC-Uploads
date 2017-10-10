// Exa 17.4

clc;
clear all;

// Given data
Vref=5;//Reference voltage(V)
R=5;// k Ohms

// Solution

disp("From fig. 17.18(c) , for a 4-bit D/A converter I=Vref/R* (D3+D2*2^-1+D1*2^-2+D0*^-3)");
//16-input combinations are as follows
Ip={[0 0 0 0];[0 0 0 1];[0 0 1 0];[0 0 1 1];[0 1 0 0];[0 1 0 1];[0 1 1 0];[0 1 1 1];[1 0 0 0];[1 0 0 1];
[1 0 1 0];[1 0 1 1];[1 1 0 0];[1 1 0 1];[1 1 1 0];[1 1 1 1]};//[D3 D2 D1 D0 bits]

disp("  Input Bits       Output Current(mA)    percent Fraction of maximum ");
for i=1:16
Iout(i)=Vref/R * (Ip(i,1)+Ip(i,2)*2^-1+Ip(i,3)*2^-2+Ip(i,4)*2^-3);

printf('   %d  %d  %d  %d             %.3f            %.3f     \n',Ip(i,1),Ip(i,2),Ip(i,3),Ip(i,4),Iout(i),(Iout(i)/1.875)*100);//1.875(mA) is the highest output current
end
