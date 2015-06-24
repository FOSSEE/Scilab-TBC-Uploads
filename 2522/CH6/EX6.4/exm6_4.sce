//page no 175
//example 6.4
//CONTINUATION OF PREVIOUS EXAMPLE.
//the sum of previous example is added to 35H
clc;
S=hex2dec(['4A']); //4AH is converted into decimal value.
A=hex2dec(['35']); //35H is converted into decimal value
s=A+S; //the result comes out to be 127. it is a decimal value
Y=dec2hex(s);
printf('Sum= ')
disp(Y);
if s>255 then
    printf('CY=1')
else
    printf('CY=0')
end

