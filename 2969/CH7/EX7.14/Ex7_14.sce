clc
clear
//DATA GIVEN
D=0.25;                       //cylinder diameter in m
L=0.4;                        //stroke length in m
Pmg=7;                        //Gross mean effective pressure in bar
Pmp=0.5;                      //Pumping mean effective pressure in bar
N=250;                        //engine speed in R.P.M.
NBL=1080;                     //net load on the brake (W-S) in N
Db=1.5;                       //effective diameter of the brake in m
Fc=10;                        //fuel used per hr in kg
C=44300;                      //calorific value of fuel used in kJ/kg
n=1;                          //no. of cylinders
k=0.5;                        //for 4-stroke cylinder

//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
Pm=Pmg-Pmp;
A=(%pi/4)*(D^2);
IP=(n*Pm*L*A*N*k*10)/6;
BP=NBL*(%pi)*(Db)*N/(60*1000);
ETAm=BP/IP;                    //mechanical efficiency
Mf=Fc/3600;
ETAthi=IP/(Mf*C);              //Indicated thermal efficiency

printf(' (i) The Indicated Power, I.P. is: %5.2f kW. \n',IP);
printf(' (ii) The Brake Power, B.P. is: %2.1f kW. \n',BP);
printf('(iii) Mechanical efficiency is: %5.3f or %2.1f percent.\n',ETAm,(ETAm*100));
printf(' (iv) Indicated thermal efficiency is: %5.3f or %2.1f percent.\n',ETAthi,(ETAthi*100));



