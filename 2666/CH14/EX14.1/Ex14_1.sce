
clc
//initialisation of variables
t1=240//F
t2=2540//F
t=460//F
p=21781//ft
h=5050//ft
q=1270//ft
w=4567//Btu
f=1545//ft
//CALCULATIONS
T2=t2+t//R
T1=t+t1//R
Q=p-h+q//Btu per mol
U=Q-w//Btu
W=Q-U//Btu
W1=1*f*(T2-T1)//ft-lb
W2=Q/(1*(T2-T1))//Btu per mol per deg
//RESULTS
printf('the constant pressure and work done=% f Btu per mol per deg',W2)
