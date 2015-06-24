clc
clear
//DATA GIVEN
n=6;                          //no. of cylinders
D=0.09;                       //bore of each cylinder in m
L=0.1;                        //length of stroke in m
r=7;                          //compression ratio
ETArel=0.55;                  //relative efficiency
Fsc=0.3;                      //indicated specific fuel consumption in kg/kWh
Pmi=8.6;                      //indicated mean effective pressure in bar
N=2500;                       //engine speed in R.P.M.
k=0.5;                        //for 4-stroke cylinder

//Air standard efficiency, ETAair=1-1/(r^(gamma-1))
g=1.4;                        //gamma of air=1.4
ETAair=1-1/(r^(g-1));
//Indicated thermal efficiency, ETArel=ETAthi/ETAair;
ETAthi=ETArel*ETAair;
//Indicted thermal eficiency, ETAthi=IP/(Mf*C)
Mf=Fsc/3600;
//taking IP=1,
C=1/(ETAthi*Mf);              //calorific value in kJ/kg
//INDICTED POWER ,I.P.=(n*Pmi*l*A*N*k*10)/6 kW
A=(%pi/4)*(D^2);
IP=(n*Pmi*L*A*N*k*10)/6;
Fc=Fsc*IP;                    //total fuel consumption in kg/hr

printf(' (i) The Calorific value of coal, C is: %5.0f kJ/kg. \n',C);
printf(' (ii) The Fuel consumption is: %5.2f kg/h. \n',Fc);

//NOTE:
//ans of calorific value here is exact, while in TB its rounded off value
