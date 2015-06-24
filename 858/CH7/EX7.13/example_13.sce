clc
clear 
printf("example 7.11 page number 316\n\n")

//to find the % transformation

moles_A = 0.02;
K = 1;

//part 1
moles_B = 0.02;
function[f] = F(x)
    f = moles_A*moles_B-(moles_A+moles_B)*x;
endfunction

//initial guess
x = 10;
y = fsolve(x,F);
printf("amount of A transformed = %f percent",y*(100/0.02))

//part 2
moles_B = 0.1;
y = fsolve(x,F);
printf("\n\namount of A transformed = %f percent",y*(100/0.02))

//part 1
moles_B = 0.2;
y = fsolve(x,F);
printf("\n\namount of A transformed = %f percent',y*(100/0.02))

