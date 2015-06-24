clc
//initialization of varaibles
disp("From tables,")
h1=611.8 //B/lb
h2=704.4 //B/lb
h3=127.4 //B/lb
h4=h3
T2=460 //R
T1=76+460 //R
W=10000 //B/hr
e=0.7
//calculations
Qe=h1-h4
Wc=h2-h1
CP=Qe/Wc
CP2=T2/(T1-T2)
w=W/(Qe*60)
v1=9.116 //cu ft/lb
PD=w*v1/(e)
//results
printf("Coefficient of performance in case 1 = %.2f",CP)
printf("\n Coefficient of performance in case 2 = %.2f",CP2)
printf("\n Piston displacement = %.2f cu ft/min",PD)
