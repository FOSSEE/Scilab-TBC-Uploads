clc
//initialization of variables
P1=100 //lb/in^2
T1=500+460 //R
P2=16 //lb/in^2
//calculations
disp("From table 4 of appendix, initial conditions are")
ht1=1279.1
st1=1.7085
hg=1152.0
sg=1.7549
hfg=969.7
sfg=1.4415
st1=1.7085
Xdash=(sg-st1)/sfg
ht2=hg-(Xdash)*hfg
hdiff=ht1-ht2
W=hdiff*778
//results
printf("\n Change in entropy is zero")
printf("\n heat trasnfer is zero since adiabatic")
printf("\n Work done = %d ft-lb/lbm",W)
printf("\n Change in enthalpy = %.1f B/lbm",hdiff)
//The answer is a bit different due to rounding off error in textbook
