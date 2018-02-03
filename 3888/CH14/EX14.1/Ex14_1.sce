//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 14.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;



d=600;                                                      //Distance between three conductors in cm
b=72;                                                       //Pressure in Hg
r=1;                                                        //Radius of the conductor in cm
t=27;                                                       //Air temperature in Celcius
m=0.90;                                                     //Irregularity factor
mv=0.82;                                                    //Surface factor
adf=3.92*b/(273+t);                                         //Air density factor 
Vc=r*21.1*m*0.9408*log(d/r);                                //Phase to neutral critical disruptive voltage in kV
cdv=Vc*sqrt(3);                                             //Line to line critical disruptive voltage in kV
Vv=21.1*mv*r*0.9408*(1+(0.3/sqrt(r*0.9408)))*log(d/r);      //Critical visual disruptive voltage
cvdv=Vv*sqrt(3);                                            //Line to line critical visual disruptive voltage in kV


printf("\nThe critical disruptive voltage is %.2f kV",cdv);
printf("\nThe  visual critical disruptive voltage is %.2f kV",cvdv);






