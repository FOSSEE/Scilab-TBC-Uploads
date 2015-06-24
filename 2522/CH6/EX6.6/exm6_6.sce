//page no 179
//example 6.6
//SUBTRACTION OF TWO NUMBERS.
//accumulator has 97H. Converting it into decimal value
clc;
A=hex2dec(['97']);
//register B has 65H. Finding 2's compliment of 65H.
B=hex2dec(['65']);
X=256-B;
Y=A+X;
S=Y-256;
Z=dec2hex(S);
printf('Subtraction= ')
disp(Z);
if Y>255 then
    CY=1;
    printf('The result is positive. \n');
else
    CY=0;
    printf('The result is negative. \n')
end
if S>127 then
    printf('S=1 \n')
else
    printf('S=0 \n')
end
if S>0 then
    printf('Z=0 \n')
else
    printf('Z=1 \n')
end
