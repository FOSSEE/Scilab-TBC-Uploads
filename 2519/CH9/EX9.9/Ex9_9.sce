clc
clear
//Initialization of variables
P1=144 //psia
T1=400 //F
y=0.7
//calculations
disp("From steam tables,")
h1=1220.4 //Btu/lbm
s1=1.6050 //Btu/lbm R
s2=1.6050 //Btu/lbm R
P2=3 //psia
sf=0.2008 //Btu/lbm R
sfg=1.6855 //Btu/lbm R
x=(s1-sf)/sfg
hf=109.37 //Btu/lbm
hfg=1013.2 //Btu/;bm
h2=hf+x*hfg
work=h1-h2
dw=y*work
h2d=h1-dw
//results
printf("Work done = %d Btu/lbm",work)
printf("\n work done in case 2 = %.1f Btu/lbm",dw)
printf("\n Final state pressure = %d psia",P2)
