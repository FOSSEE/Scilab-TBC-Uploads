clear;
clc;
Tj=400 //junction temperature in Celsius
TA=50 //ambient temperature in Celsius
P=90 //power supplied in Watts
Rth_dp=1.5 //in C/W
convection_coeff=100 //heat convection cofficient in W/degree-C*m^2

//Calculation
Rth_sa=((Tj-TA)/P)-Rth_dp
A=1/(Rth_sa*convection_coeff)

format("v",5)
disp(Rth_sa,"Maximum thermal temperature of heat sink (C/W)= ") //The answers vary due to round off error
format("e",8)
disp(A,"Surface Area (m^2)= ")
