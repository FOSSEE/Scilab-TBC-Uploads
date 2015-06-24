clc
clear
//DATA GIVEN
D=0.075;                      //bore in m
L=0.09;                       //stroke length in m
n=4;                          //no. of cylinders
erar=39/8;                    //engine to rear axle ratio =39:8
Dw=0.65;                      //wheel diameter with tyre fully inflated in m
Fc=0.227;                     //petrol consumption for a distance of 3.2 km at a speed of 48 km/hr
Pmi=5.625;                    //mean effective pressure in bar
C=43470;                      //calorific value of fuel used in kJ/kg
k=0.5;                        //for 4-stroke cylinder

s=48*1000/60;                 //speed of car in m/min
//if Nt rev are made by tyre per minute, speed=pi*Dw*Nt
Nt=s/(%pi*Dw);                //R.P.M.
//as engine to rear axle ratio is 39:8
Ne=erar*Nt;                   //speed of enfine shaft in R.P.M.
//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
A=(%pi/4)*(D^2);
IP=(n*Pmi*L*A*Ne*k*10)/6;

s=s/1000;                     //speed of car in km/min
t=3.2/s;                      //time in min for covering 3.2 km 
//petrol consumption for a distance of 3.2 km aat a speed of 48 km/hr is 0.227kg
Mf=Fc/(t*60);                 //fuel consumed per sec
ETAthi=IP/(Mf*C);             //Indicated fuel efficiency

printf(' (i) The Indicated Power developed is: %5.2f kW. \n',IP);
printf(' (ii) The Indicated thermal efficiency is: %1.3f or %2.1f percent. \n',ETAthi,(ETAthi*100));
