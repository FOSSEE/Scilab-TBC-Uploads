//ques3
//determining the thrust acting on a control surface
clear
clc
//i-inlet
//e-exit
//using momentum equation on control surface in x direction
me=20.4;//mass exiting in kg
mi=20;//mass entering in kg
ve=450;//exit velocity in m/s
vi=100;//exit velocity in m/s
Pi=95;//Pressure at inlet in kPa
Pe=125;//Pressure at exit in kPa
Po=100;//surrounding pressure in kPa
Ai=0.2;//inlet area in m^2
Ae=0.1;//exit area in m^2
Rx=(me*ve-mi*vi)/1000-(Pi-Po)*Ai+(Pe-Po)*Ae;//thrust in x direction in kN
printf('Thrust acting in x direction = %.2f kN',Rx); 