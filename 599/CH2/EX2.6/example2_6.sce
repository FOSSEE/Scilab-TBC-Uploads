
clear;
clc;
printf("\t Example 2.6\n");
T=298;                            //temperature in kelvin
pt=1*1.013*10^5;                //total pressure in pascal
ID=25*10^-3;                   //internal diameter in m of unvulcanised rubber in m
OD=50*10^-3;                  //internal diameter in m of unvulcanised rubber in m
Ca1=2.37*10^-3;              //conc. of hydrogen at the inner surface of the pipe in kmol/m^3
Ca2=0;                            //conc. of hydrogen at 2
Dab=1.8*10^-10;                  //diffusion coefficient in cm^2/s
l=2;                            //length of pipe in m
//    Va=Da*Sa*(pa1-pa2)/z;
z=(50-25)*10^-3/2;                        //wall thickness in m
Va=Dab*(Ca1-Ca2)/z;                      //diffusion through a flat slab of thickness z 
Sa=2*3.14*l*(OD-ID)/(2*log(OD/ID));    //average mass transfer area of 
rate=Va*Sa;                           //rate of loss of hydrogen by diffusion
printf("\n rate of loss hydrogen by diffusion through a pipe of 2m length :%f*10^-12kmol/s",rate/10^-12);
//end