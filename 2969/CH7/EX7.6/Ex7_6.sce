clc
clear
//DATA GIVEN
D=0.2;                        //diameter of engine cylinder in m
L=0.350;                      //length of stroke in m
Pmico=6.5;                    //mean effective pressure on cover side in bar
Pmicr=7;                      //mean effective pressure on crank side in bar
N=420;                        //engine speed in R.P.M.
Drod=0.02;                    //diameter of piston rod in m
W=1370;                       //dead load on the brake in N
S=145;                        //spring balance reading in N
Db=1.2;                       //diameter of brake wheel in m
d=0.02;                       //diameter of rope in m
n=1;                          //no. of cylinders
k=0.5;                        //for 4-stroke cylinder

//INDICTED POWER ,I.P.=(n*Pmi*l*A*N*k*10)/6 kW
Aco=(%pi/4)*(D^2);                 //area of cylinder om cover end in m^2
Acr=(%pi/4)*(D^2-Drod^2);          //area of cylinder om crank end in m^2
IPco=(n*Pmico*L*Aco*N*k*10)/6;     //IP on cover end side in kW
IPcr=(n*Pmicr*L*Acr*N*k*10)/6;     //IP on crank end side in kW
IPtotal=IPco+IPcr;                 //IP total in kW

//Brake Power, B.P.=(W-S)(pi)(Db+d)N/(60*1000) kW
BP=(W-S)*(%pi)*(Db+d)*N/(60*1000);

eta=BP/IPtotal;                    //mechanical efficiency

printf('Mechanical efficiency is: %5.4f or %5.2f percent.\n',eta,(eta*100));
