//page no 174
//example 6.3
//ADDITION OF TWO NUMBERS.
//93H is stored in accumulator. Converting it into decimal.
clc;
A=hex2dec(['93']);
//B7H is stored in register C. Converting it into decimal.
C=hex2dec(['B7']);
X=A+C; // the result comes out to be 330
Z=X-256;
//X=330; // this is a decimal value. Converting it into hexadecimal
Y=dec2hex(Z);
printf('Sum= ')
disp(Y);
if X>255 then
    printf('CY=1')
else
    printf('CY=0')
end


