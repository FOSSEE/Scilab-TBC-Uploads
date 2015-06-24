//page no 185
//example no 6.7
//PERFORMING LOGICAL OPERATIONS.
//register B holds 93H.Binary of 93H is 10010011
//register A holds 15H. Binary of 15H is 00010101.
clc;
B=[1 0 0 1 0 0 1 1]; //taking the value of A in matrix form.
A=[0 0 0 1 0 1 0 1]; //taking the value of B in matrix form.
Y= bitor(A,B); // getting OR of A & B
printf('OR of A & B is')
disp(Y);
if Y(1,1)==1 then
    printf('S=1 \n');
else
    printf('S=0 \n');
end
if Y==0 then
    printf('Z=1 \n');
else
    printf('Z=0 \n');
end
printf('CY=0 \n');
R=bitxor(A,B); //getting XOR of A & B
printf('XOR of A & B is')
disp(R);
if R(1,1)==1 then
    printf('S=1 \n');
else
    printf('S=0 \n');
end
if R==0 then
    printf('Z=1 \n');
else
    printf('Z=0 \n');
end
printf('CY=0 \n');
K=bitcmp(A,1); //getting the compliment of A
printf('Compliment of A is: \n');
disp(K);
