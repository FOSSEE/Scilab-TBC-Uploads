//Chapter 01: The Foundations: Logic and Proofs

clc;
clear;

function p(x) //function definition to check whether the given statements are true.
if(x>3) then
    mprintf("\np(%d) which is the statement %d > 3, is true",x,x)
else
    mprintf("\np(%d) which is the statement %d > 3, is false",x,x)
end
endfunction

p(4)
p(2)
