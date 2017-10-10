// Ex 35 Page 378

clc;clear;close;
// Given
C1=1.2;//Rs
C2=5;//Rs
P1=100;//W
P2=30;//W
t=1000;//hours
Ce=60;//Rs/kW/annum for max demand
Cee=3 ;//paise/unit for extra

//first lamp
Cl1=C1*100/t;// paise / hour
dmax1=P1/1000;//kW/hour
Cmax1=Ce*100*dmax1/(24*365);//paise/hour
CE1=Cee*dmax1;///paise / hour
CT1=Cl1+Cmax1+CE1;//paise (total cost per hour)
printf("lamp1 : Total cost/hour = %.3f paise",CT1)
//second lamp
Cl2=C2*100/t;// paise / hour
dmax2=P2/1000;//kW/hour
Cmax2=Ce*100*dmax2/(24*365);//paise/hour
CE2=Cee*dmax2;///paise / hour
CT2=Cl2+Cmax2+CE2;//paise (total cost per hour)
printf("\n lamp2 : Total cost/hour = %.2f paise",CT2)
printf("\n on comparing cost it is clear lamp1 will be more economical. ")
//let load factor = x
//Cl1+Cmax1/x+CE1=Cl2+Cmax2/x+CE2
x=(Cmax1-Cmax2)/(Cl2+CE2-Cl1-CE1)*100;// % load factor
printf("\n\n load factor = %.f percent",x)
