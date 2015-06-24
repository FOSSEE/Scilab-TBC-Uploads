clear;
clc;

//page no. 411

P = 25;//in. of mercury
p = 18;//in. of mercury
T = 150;//degreeF

k = P/p;
if k < (1.893) then
    V = sqrt(2*32.2*186.5*(T+460)*(1-(1/k)^0.286));
end

printf('The local velocity just upstream from the pitot static tube = %d fps',V);
