clear;
clc;

//page no. 411

P = 20;//in. of mercury
p = 5;//in. of mercury
T = 150;//degreeF

k = P/p;

if k >1.893 then
    M_0 = 1.645;
end
V_0 = sqrt(2*32.2*186.5*(T+460)/(1+ (2*186.5)/(53.3*1.4*M_0^2)));

printf('The speed of this airplane = %d fps',V_0);

//there is an error in the answer given in textbook
