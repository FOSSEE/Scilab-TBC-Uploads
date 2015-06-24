clc
//Initialization of variables
h1=80.419 //B/lbm
h3=36.013 //B/lbm
h4=h3
P3=172.35 //psia
P2=P3
m=5 //tons
Q=12000
//calculations
h2=91.5 //B/lbm
disp("From superheated steam tables,")
COP=(h1-h4)/(h2-h1)
W=h2-h1
md=m*Q/(h1-h4)
Wt=md*(h2-h1)
Wt2=Wt/2545
//results
printf("Coefficient of performance = %.1f",COP)
printf("\n Input work = %.1f hp",Wt2)
