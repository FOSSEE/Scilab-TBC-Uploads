//ques7
//Measuring pressure with multifluid manometer
clear
clc
Patm=85.6; //in kPa
dwater=1000;//density of water in Kg/m^3 
dmercury=13600;//density of mercury in Kg/m^3
doil=850;//density of oil in Kg/m^3
g=9.81;//acc due to gravity in m/s^2
h1=0.1;//height of water in metre
h2=0.2;//height of oil in metre
h3=0.35;//hieght of mercury in metre
P1=Patm+g*(dmercury*h3-dwater*h1-doil*h2)/1000;
printf("Pressure P1 = %.0f kPa",P1);


