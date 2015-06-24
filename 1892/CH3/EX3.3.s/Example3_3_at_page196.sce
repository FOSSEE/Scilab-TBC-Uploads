// Sp_Example 3.3

clear; clc; close;

format('v',6);
// Given data

Ns=6;//poles
Nr=4;//poles
Beta_s=30;//in degree
Beta_r=32;//in degree
La=10.7;//in mH
LU=1.5;//in mH
i=7;//in A
q=3;//phase

//Calculations
thetaK=2*180/4-(Beta_r+Beta_s)/2;//in degree
theta1=thetaK;//in degree
thetaY=2*180/2-(Beta_r-Beta_s)/2;//in degree
theta2=thetaY;//in degree
dTheta=theta2-theta1;//in degree
dL=La-LU;//in mH
T=i^2/2*dL/dTheta;//in N-m
lambda_a=La*i*10^-3;//in m
lambda_u=LU*i*10^-3;//in m
Wm=(lambda_a-lambda_u)/2*i;//in joules
//Formula : Power transfered = Energy 1 sec 
//Pm=2*%pi*N*T/60=Wm*Nr*q*N/60
T=Wm*Nr*q/2/%pi;//in N-m
disp(T,"Averagge torque in N-m : ");
