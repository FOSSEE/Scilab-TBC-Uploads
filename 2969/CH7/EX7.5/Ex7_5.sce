clc
clear
//DATA GIVEN
D=0.3;                        //bore of engine cylinder in m
L=0.45;                       //stroke length in m
N=300;                        //engine speed in R.P.M.
Pmi=6;                        //mean effective pressure in bar
NBL=1.5;                      //Net brake load (W-S) in kN
Db=1.8;                       //diameter of brake drum
d=0.02;                       //brake rope diameter
n=1;                          //no. of cylinders
k=0.5;                        //for 4-stroke cylinder

//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
A=(%pi/4)*(D^2);
IP=(n*Pmi*L*A*N*k*10)/6;
BP=NBL*(%pi)*(Db+d)*N/(60);
eta=BP/IP;                    //mechanical efficiency

printf(' (i) The Indicted Power, I.P. is: %5.2f kW. \n',IP);
printf(' (ii) The Brake Power, B.P. is: %5.2f kW. \n',BP);
printf('(iii) Mechanical efficiency is: %5.4f or %5.2f percent.\n',eta,(eta*100));
