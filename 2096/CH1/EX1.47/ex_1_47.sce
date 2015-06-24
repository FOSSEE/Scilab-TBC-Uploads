//Example 1.47://magnitude and limiting error
clc;
clear;
F=4.26;//in KG
EF1=0.02;//percentage error
L=382;//in MM
EL2=1.2;//percentage error
R=1192;//in ohms
ER=1;//percentage error
T=60;//in seconds
Et=0.50;//percentage error
P= ((2*%pi*9.81*F*L*R)/(T*10^6));//power in kW
lr=((EF1/F)+(EL2/L)+(ER/R)+(Et/T))*P//limiting error in WATTS
disp(P,"magnitude of power in watts")
disp(lr,"  limiting error in watts is ±")
