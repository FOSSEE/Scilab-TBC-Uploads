clc
clear 
printf("example 3.7 page number 95\n\n")

//to find the extraction of nicotine
xf = 0.01
Xf = xf/(1-xf);
Feed = 100   //feed in kg
c_nicotine = Feed*Xf;   //nicotine conc in feed
c_water = Feed*(1-Xf)    //water conc in feed

//part 1
function[f] = F1(x)
    funcprot(0)
    f = (x/150)-0.9*((1-x)/99);
endfunction

//initial guess
x = 10;
y = fsolve(x,F1);
printf("amount of nicotine removed N = %f kg",y)
//part 2
function[f] = F1(x)
    f = (x/50)-0.9*((1-x)/99);
endfunction

//initial guess
x = 10;
N1 = fsolve(x,F1);
printf("\n\namount of nicotine removed in stage 1, N1 = %f kg",N1)
function[f] = F1(x,N1)
    f = (x/50)-0.9*((1-x-N1)/99);
endfunction

//initial guess
x = 10;
N2 = fsolve(x,F1);
printf("\n\namount of nicotine removed in stage 2, N2 = %f kg",N2)
function[f] = F1(x,N1,N2)
    f = (x/50)-0.9*((1-x-N2-N1)/99);
endfunction

//initial guess
x = 10;
N3 = fsolve(x,F1);

printf("\n\namount of nicotine removed in stage 3, N3 = %f kg",N3)
N = N1+N2+N3;
printf("\n\ntotal amount of nicotine removed = %f kg",N)
