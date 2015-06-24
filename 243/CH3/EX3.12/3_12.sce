//Example No. 3_12
//Integer Arithmetic
//Pg No. 53
clear ;close ;clc ;
a = 5 ;
b = 7 ;
c = 3 ;
Lhs = int((a + b)/c)
Rhs = int(a/c) + int(b/c)
disp(Rhs,'a/c + b/c = ',Lhs,'(a+b)/c = ')
if Lhs ~= Rhs then
    disp('The results are not identical.This is because the remainder of an integer division is always truncated')
end