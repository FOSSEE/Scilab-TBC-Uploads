//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 7 ; Example 7.2
//Scilab Version - 6.0.0 ; OS - Windows
clc;
clear;
Srated = 500;                                                                                   //apparent power in MVA
Vrated = 20;                                                                                    //rated voltage in kV
frated = 60;                                                                                    //fated frequency in Hz
Xd2 = 0.15;                                                                                     //synchoronous reactances per unit
Xd1 = 0.24;                                                                                     //synchoronous reactances per unit
Xd = 1.1;                                                                                       //synchoronous reactances per unit
Td2 = 0.035;                                                                                    //time constants in seconds
Td1 = 2.0;                                                                                      //time constants in seconds
Td = 0.20;                                                                                      //time constants in seconds
t = 3;                                                                                          //no. of cycles
Eg = 1.05;                                                                                      //no load voltage  in per unit
I2u = Eg/Xd2;                                                                                    //sub transient fault current in per unit
Ibase = Srated/(sqrt(3)*20);                                                                    //base current in kA
I2 = I2u*Ibase;                                                                                  //rms subtransient fault current in kA
Iac = Eg*((((1/Xd2)-(1/Xd1))*exp(-0.05/Td2))+(((1/Xd1)-(1/Xd))*exp(-0.05/Td1))+(1/Xd));         //rms ac fault current in per unit
Iac=Iac*Ibase;                                                                                  //rms ac fault current in kA
Irms = sqrt((Iac^2)+((sqrt(2)*I2*exp(-0.05/Td))^2));                                            //rms asymmetrical fault current in kA
printf('\n Sub transient fault current in per unit I2 = %f kA',I2u);
printf('\n Sub transient fault current in kA I2 = %f kA',I2);
printf('\n The rms asymmetrical fault current Irms = %f kA',Irms);

