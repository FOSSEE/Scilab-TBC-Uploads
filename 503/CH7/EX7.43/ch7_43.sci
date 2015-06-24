//to find the no of starter sections reqd,and resistance of each section

clc;
I1=55;
I2=35;
g=I1/I2;
V1=220;
R1=V1/I1;
Ra=.4;
n=log((R1/Ra)-g)+1;
disp((n),'no of starter sections reqd');

function [R]=res (re)
    R=(1/g)*re;
endfunction
R_1=R1-res(R1);disp(R_1,'R1(ohm)');
R_2=res(R_1);disp(R_2,'R2(ohm)');
