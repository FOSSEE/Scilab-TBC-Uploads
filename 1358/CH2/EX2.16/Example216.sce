// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 16")
disp("Given Data:")
Qdel = 72//Discharge in l/s
rho = 1000
Di = 0.09//Inner Dia in m
Do = 0.28//Outer Dia in m
N = 1650//Revolution in min
H = 25//Head
bi = 0.02//Width at inlet in m
bo = 0.018//Width at outlet in m
Qleak = 2//in l/s
etap = 0.56//Efficiency of the pump
cf = 0.85//Contraction factor
g = 9.81//gravity in m/s2
Ploss = 1.41
disp("Total quantity of the water to be handled by the pump Qt in l/s")
Qt = Qdel + Qleak
disp("Total quantity of water per side Qw")
Qw = Qt/2
disp("Impeller speed at inlet U1 in m/s")
U1 = %pi*Di*N/60
disp("Flow area at inlet Af")
Af = %pi*Di*bi*cf
disp("Therefore, the velocity of flow at inlet Crl in m/s")
Crl = Qw/(Af*1000)
disp("From inlet velocity triangle beta1")
beta1 = atan(Crl/U1)*180/%pi//Crl/U1 = 7.708/7.78
disp("Area of flow at outlet Ao")
bo1 = bo / 2
Ao = %pi * Do * bo1* cf
disp("Therefore, the velocity of flow at outlet Cr2")
Cr2 = Qw/(Ao*1000)
disp("The impeller speed at outlet U2")
U2 = %pi*Do*N/60
disp("Now using velocity triangle at outlet Cw2 in m/s")
Cw2 = U2 - Cr2/tan(35*%pi/180)
alpha2 = atan(Cr2/Cw2)*180/%pi
disp("The absolute velocity of water leaving the impeller C2 in m/s")
C2 = Cw2/cos(alpha2*%pi/180)
disp("The manometric efficiency etaman")
etaman =  g*H/(U2*Cw2)
disp("The volumetric efficiency etav")
etav = Qdel/Qt
disp("Water power Pw in kW")
Pw = rho*g*Qdel*H/1000000
disp("Shaft power Ps in kW")
Ps = Pw/etap
disp("Mechanical efficiency is etam")
etam = (Ps - Ploss)/Ps 
