clc
//Initialization of variables
h1=1220.4 //Btu/lbm
s1=1.6050 //Btu/lbm R
s2=1.6050 //Btu/lbm R
p2=3 //psia
sf=0.2008 //Btu/lbm R
hf=109.37
sfg=1.6855 //Btu/lbm R
hfg=1013.2 //Btu/lbm 
eta=0.7
//calculations
x= (s2-sf)/sfg
h2=hf+ x*hfg
Wrev= h1-h2
w=eta*Wrev
//results
printf("Work done = %d Btu/lbm",Wrev)
printf("\n Work done in case 2 = %.1f Btu/lbm",w)
//The asnwer is a bit different due to rounding off error int he textbook
