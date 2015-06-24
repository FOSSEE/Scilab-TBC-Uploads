clear;
clc;
R=44;L=0.001;G=1*(10^-6);C=0.065*(10^-6);f=1600;r=3.7;l=88*(10^-3);
d=1.136;
w=2*%pi*f;
Rc=R+(r/d);
Lc=L+(l/d);
Zo=sqrt(Lc/C);
printf("-Approximate value of Zo = %f ohms\n",round(Zo*100)/100);
al=(((Rc/2)*sqrt(C/Lc))+((G/2)*sqrt(Lc/C)))*8.686;
printf("-Approximate value of a = %f db/km\n",fix(al*1000)/1000);
b=w*(sqrt(Lc*C));
printf("-Approximate value of b = %f radians/km",fix(b*1000)/1000);
//the difference in result of Zo is due to erroneous value in textbook.
disp("The difference in result of Zo is due to erroneous value in textbook")
