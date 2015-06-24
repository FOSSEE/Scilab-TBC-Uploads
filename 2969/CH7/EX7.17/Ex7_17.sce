clc
clear
//DATA GIVEN
t=1;                          //duration of trial in hr
N=14000;                      //revolutions
mc=500;                       //no. of missed cycles
NBL=1470;                     //Net brake load (W-S) in N
Pmi=7.5;                      //mean effective pressure in bar
Vg=20000/3600;                //gas consumption in litres/s
C=21;                         //LCV of gas at sipply conditions in kJ/litre
D=0.25;                       //cylinder diameter in m
L=0.4;                        //stroke length in m
Cb=4;                         //effective brake circumference in m
r=6.5;                        //compression ratio
n=1;                          //no. of cylinders
k=0.5;                        //for 4-stroke cylinder

//gamma for air, g=1.4
g=1.4;

//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
Nk=(N*k-mc)/60;               //(N*k)-working cycles/min
A=(%pi/4)*(D^2);
IP=(n*Pmi*L*A*Nk*10)/6;
N=N/60;
BP=NBL*(Cb)*N/(60*1000);
eta=BP/IP;                    //mechanical efficiency
ETAthi=IP/(Vg*C);             //Indicated thermal efficiency

//relative efficiency, ETArel=ETAthi/ETAas
//ETAas=1-1/(r^(g-1))
ETAas=1-1/(r^(g-1));          //air-standard efficiency
ETArel=ETAthi/ETAas;          //relative efficiency

printf('  (i) The Indicated Power, I.P. is: %5.2f kW. \n',IP);
printf('  (ii) The Brake Power, B.P. is: %5.2f kW. \n',BP);
printf(' (iii) Mechanical efficiency is: %5.3f or %2.1f percent.\n',eta,(eta*100));
printf('  (iv) The Indicated thermal efficiency is: %2.2f or %2.0f percent. \n',ETAthi,(ETAthi*100));
printf('   (v) The Relative efficiency is: %2.3f or %2.1f percent. \n',ETArel,(ETArel*100));
