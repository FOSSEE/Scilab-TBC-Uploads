
clc
//initialisation of variables
v=934//Btu per cu ft
t=77//F
w=0.05//lb
B=1545//lb
t1=460//F
p=144//ft
p1=14.7//ft
m=2//mol
w1=0.0918//lb
h=1050.4//ft
//CALCULATIONS
V=1*(B)*(t+t1)/(p*p1)//cu ft
W=m/V//mol
Qhp=v+(w1-w)*h//Btu per cu ft
Qlp=v-w*h//Btu per cu ft
//RESULTS
printf('the higher heating value at constant pressure=% f Btu per cu ft',Qhp)
printf('the lower heating value at constant pressure=% f Btu per cu ft',Qlp)
