clc
//initialization of variables
P1=14.7 //lb/in^2
P2=20 //lb/in^2
w=1 //lbm
//calculations
printf("From table 3 of appendix,")
v1=26.8
h1=1150.4
s1=1.7566
u1=h1- 144*P1*v1/778
printf("\n Internal energy 1 = %.1f B/lbm",u1)
disp("For pressure of 20 lb/in^2 , from table 2,")
v2=26.8
h2=1260.9
s2=1.8637
u2=h2-144*P2*v2/778
du=u2-u1
ds=s2-s1
//results
printf("\n Change in internal energy = %.1f B/lbm",du)
printf("\n CHange in entropy = %.4f B/lbm R",ds)
