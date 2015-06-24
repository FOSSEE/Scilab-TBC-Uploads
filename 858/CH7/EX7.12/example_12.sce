clc
clear 
printf("example 7.11 page number 316\n\n")

//to find the initial conc of A and B
Cp = 0.02;
Cq = 0.02;
K = 4*10^-2;
Cb = 0.05;
Cb_i = Cb+Cp;
a = (Cp*Cq)/(K*Cb);
funcprot(0)
function[f] = F(x,a)
    f = x-0.02-a;
endfunction

//initial guess
x = 10;
y = fsolve(x,F);
printf("conc of A= %f mol/l",y)
printf("\n\nconc of B= %f mol/l",Cb_i)
