clc
clear
//Input data
Q1=50;//Heat developed in the 1-2 process in kJ/kg
U1=20;//Change in energy in the 1-2 process in kJ/kg
Q2=-30;//Heat developed in the 2-3 process in kJ/kg
W2=-40;//Work done in the 2-3 process in kj/kg
U3=-30;//Change in energy in the 3-1 process in kJ/kg
Wt=30;//Net work done per kg of fluid in kJ/kg
m=0.1;//Mass of fluid in the cycle in kg
N=10;//Number of cycles per sec in cycles/sec

//Calculations
W1=Q1-U1;//Work done in the 1-2 process in kJ/kg
U2=Q2-W2;//Change in energy in the 2-3 process in kJ/kg
W3=Wt-W1-W2;//Work done in the 3-1 process in kJ/kg
Q3=W3+U3;//Heat developed in the process in kJ/kg
m1=m*N;//mass flow rate per sec in kg/sec
P=Wt*m1;//Rate of power in kW

//Output
printf('(a)Work done in the 1-2 process W =%3.0f kJ/kg \n (b)Change in energy in the 2-3 process U = %3.0f kJ/kg \n (c)Work done in the 3-1 process W = %3.0f kJ/kg \n (d)Heat developed in the process Q = %3.0f kJ/kg \n (e)mass flow rate per sec m = %3.0f kg/sec \n (f)Rate of power P = %3.0f kW',W1,U2,W3,Q3,m1,P)
