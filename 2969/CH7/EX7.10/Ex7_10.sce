clc
clear
//DATA GIVEN
n=4;                          //no. of cylinders
BP=30;                        //Brake Power in kW
N=2500;                       //engine speed in R.P.M.
Pmi=8;                        //mean effective pressure in bar
ETAm=0.8;                     //mechanical efficiency
ETAthb=0.28;                  //brake thermal efficiency
C=43900;                      //calorific value of fuel used in kJ/kg
k=1;                          //for 2-stroke cylinder

//mechanical efficiency, ETAm=BP/IP
IP=BP/ETAm;
//INDICTED POWER ,I.P.=(n*PMI*l*A*N*k*10)/6 kW
//L=1.5D,
D=((6*IP)/(10*k*N*n*Pmi*1.5*(%pi/4)))^(1/3);     //bore diameter in m
L=1.5*D;                                         //length of stroke in m
//Brake thermal efficiency, ETAtb=BP/(Mf*C)
Mf=BP/(ETAthb*C);                                //fuel consumption in kg/hr

printf(' (i) The Bore diameter is: %5.3f m or %2.0f mm.\n',D,(D*1000));
printf('      The Stoke length is: %2.0f mm.\n',(L*1000));
printf(' (ii) The Fuel consumption is: %5.5f kg/s or %3.2f kg/hr. \n',Mf,(Mf*3600));
