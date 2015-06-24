
clc
clear
//Input data
q=[30,25,20,0,010,50,80,100,110,65,45,30]//Mean discharge in millions of cu.m per month respectively
h=90//Head in m
n=86//Overall efficiency in percent

//Calculations
Qm=(q(1)+q(2)+q(3)+q(4)+q(5)+q(6)+q(7)+q(8)+q(9)+q(10)+q(11)+q(12))/12//Mean discharge in millions m^3/s
Q=[30,30,25,25,20,20,0,0,10,10,50,50,80,80,100,100,110,110,65,65,45,45,30,30,0]//Discharge(million m^3/month) on y-axis
y=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12]//Months on x-ais
D=[110,100,90,80,70,60,50,40,30,25,20,10,0]//Discharge per month in million m^3
pt=[8.3,16.7,25,25,25,33.3,41.7,50,66.7,75,83.3,91.7,100]//Percentage time 
Po=((Qm*10^6*9.81*h*(n/100))/(30*24*3600*1000))//Power developed in MW

//Output
subplot(121)
plot(y,Q)//Graph Discharge(million m^3/month) vs Month
xtitle('Discharge(million m^3/month) vs Month','Months','Discharge(million m^3/month)')
subplot(122)
plot(pt,D)//Graph percentage time vs Discharge(million m^3/month)
xtitle('percentage time vs Discharge(million m^3/month)','percentage time','Discharge(million m^3/month)')
printf('Power developed is %3.2f MW',Po)
