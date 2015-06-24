clc
clear
//Initialization of variables
Hi=55
Pi=11.8
xi=0.514
H2=18.1
H3=26.9
Pi2=17.4
//calculations
ai=Pi/Hi
gam=ai/xi
a2=Pi/H2
gam2=a2/xi
a3=Pi2/H3
gam3=a3/(1-xi)
//results
disp("part a")
printf("Activity of acetic acid = %.4f ",ai)
printf("\n Activity coefficient  = %.4f ",gam)

disp("part b")
printf("Activity of acetic acid = %.4f ",a2)
printf("\n Activity coefficient  = %.4f ",gam2)

disp("part c")
printf("Activity of toluene = %.4f ",a3)
printf("\n Activity coefficient  = %.4f ",gam3)
