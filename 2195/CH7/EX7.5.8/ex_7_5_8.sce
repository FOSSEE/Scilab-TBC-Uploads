//Example 7.5.8: LIMITING VALUE OF RESISTANCE
clc;
clear;
close;
format('v',8)
P=100;//OHMS
Q=P;//
S=230;//IN OHMS
DP=0.02;//ERROR IN PERCENTAGE
DS=0.01;//IN PERCENTAGE
R=(P/Q)*S;//unkow resistance in ohms
dr=(DP+DP+DS);//relative limiting error in unknow resistance in percentage ±
drm=(dr/100)*R;//magnitude of error
R1=R+drm;//in ohms
R2=R-drm;//in ohms
disp("limiting value of unknown resistance is "+string(R1)+" ohms to "+string(R2)+" ohms")
