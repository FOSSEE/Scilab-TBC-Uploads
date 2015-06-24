clc;funcprot(0);//EXAMPLE 17.13
// Initialisation of Variables
pmicover=6.5;....................//Mean effective pressure on cover side in bar
pmicrank=7;......................//Mean effective pressure on crank side in bar
D=0.2;...........................//Engine bore in m
l=0.35;..........................//Engine stroke in m
drod=0.02;.........................//Diameter of piston rod in m
W=1370;............................//Dead load on the brake in N
S=145;.............................//Spring balance reading in N
Db=1.2;............................//Brake wheel diameter in m
d=0.02;............................//Brake rope diameter in m
k=0.5;.............................//Four stroke engine
N=420;.......................//Engine rpm
//calculations
Acover=(%pi/4)*D*D;.......................//Area of cylinder on the cover side in m^2
Acrank=(%pi/4)*((D^2)-(drod^2));..........//Effective area of cylinder on the crank end side in m^2
IPcover=(pmicover*l*Acover*N*k*10)/6;................//Indicated power on the cover end side in kW
IPcrank=(pmicrank*l*Acrank*N*k*10)/6;................//Indicated power on the crank end side in kW
IPtotal=IPcover+IPcrank;....................//TOtal
BP=((W-S)*%pi*(Db+d)*N)/(60*1000);...................//Brake power in kW
etamech=BP/IPtotal;..................................//Mechanical efficiency
disp(etamech*100,"The mechanical efficiency is (%):")
