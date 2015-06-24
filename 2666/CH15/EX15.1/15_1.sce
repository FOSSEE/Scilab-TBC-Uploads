clc
//initialisation of variables
t1=90//F
q=14.7//pasi
t2=74//F
P=0.4156//Psia
h=2800//lbf
t=1.3//F
r=460//F
v=144//lbf
p=85.8//lbf
Psat=0.6982//ft
h1=0.622//ft
//CALCULATIONS
Pv=P-((q-P)*(t1-t2))/(h-t*(t2))//psia
W=(v*Pv*1)/(p*(t1+r))//lb per cu ft
R=Pv/Psat*100//percent
S=h1*(Pv/(q-Pv))//lb vapor per lb dry air
//RESULTS
printf('The absolute humidity=% f lb per cu ft',W)
printf('The relative humidity=% f percent',R)
printf('specific humidity=% f lb vapor per lb dry air',S)
