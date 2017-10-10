//Eg-5.2
//pg-216

clear
clc

A=[1 -1 4;3 2 -1;2 1 -1];

if (A^3)-2*(A^2)-(5*A)+6*eye(3,3)==zeros(3,3) then
    disp("cayley-hamiliton theorem was verified")
end