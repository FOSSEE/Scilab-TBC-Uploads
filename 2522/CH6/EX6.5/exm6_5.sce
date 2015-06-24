//page no 175
//example no 6.5
//INCRIMENTING ACCUMULATOR CONTENT.
//accumulator holds the data FFH
clc;
A=hex2dec(['FF']); //converting FFH into decimal value
//decimal value of 01H is 01. Adding 01 to A
Y=A+1; //the result comes out to be 256
Z=Y-256;
X=dec2hex(Z);
printf('Sum =')
disp(X);
if Y>255 then
    printf('CY=1 \n')
else
    printf('CY=0 \n')
end
if Z>127 then
    printf('S=1 \n')
else
    printf('S=0 \n')
end
if Z>0 then
    printf('Z=0 \n')
else
    printf('Z=1 \n')
end


