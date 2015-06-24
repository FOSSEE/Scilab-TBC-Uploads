clc
clear
//Initialization of variables
b1=480.9
h1=1306.9
s1=1.5894
h2=1122
s2=s1
s3=1.6522
b3=310.9
h3=1169.5
//calculations
W=h3-h1
db=b3-b1
dh=h1-h2
etae=abs(W/dh)
eps=abs(W/db)
I=db-W
//results
printf("Engine efficiency = %.1f percent",etae*100)
printf("\n Effectiveness = %.1f percent",eps*100)
printf("\n Loss of available energy = %.1f Btu/lbm",I)
