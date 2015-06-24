// page no 326
// examle no 10.5
// SUBTRACTION OF TWO 16 BIT NUMBERS
clc;
printf('B--> 85H      C--> 38H \n');
printf('D--> 62H      E--> A5H \n \n');
b=hex2dec(['85']);
c=hex2dec(['38']);
d=hex2dec(['62']);
e=hex2dec(['A5']);
printf('MOV A,C \n \n');
a=c;
printf('SUB E \n');
a=a-e;
Z=a+256;
X=dec2hex(Z);
printf('Difference =')
disp(X);
if a<0 then
    printf('Borrow=1 \n \n');
    B=1;
else
    printf('Borrow=0 \n')
    B=0;
end
printf('MOV C,A \n');
printf('C-->');
disp(X);
printf('\n \n MOV A,B \n \n');
a=b;
printf('SBB D \n');
a=a-d-B; // 1 is subtracted because of the previous borrow as per the instructions SBB (subtract with borrow)
T=dec2hex(a);
printf('Difference =')
disp(T);
if a<0 then
    printf('Borrow=1 \n \n')
else
    printf('Borrow=0 \n \n')
end
printf('MOV B,A \n');
printf('B-->');
disp(T);
