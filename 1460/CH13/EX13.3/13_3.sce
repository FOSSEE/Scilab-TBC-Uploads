clc
//initialization of variables
Mn=3
Mni=0.2
w=10 //lbm/sec
g=1.4
P=200 //lb/in^2
T=400+460 //R
//calculations
Astar=w*sqrt(53.3*T) *((g+1)/2)^3 /(P*sqrt(g*32.2))
A1ratio=(2/(g+1) + (g-1)*Mni^2 /(g+1))^3 /Mni
A1=A1ratio*Astar
A2ratio=(2/(g+1) + (g-1)*Mn^2 /(g+1))^3 /Mn
A2=A2ratio*Astar
Pexit=P/(1+ Mni*Mn^2)^(g/(g-1))
//results
printf("Throat Area = %.2f in^2",Astar)
printf("\n Inlet Area = %.2f in^2",A1)
printf("\n Exit Area = %.2f in^2",A2)
printf("\n Exit pressure = %.2f lb/in^2",Pexit)
//There is a printing mistake in the textbook for the formula of Exit area
