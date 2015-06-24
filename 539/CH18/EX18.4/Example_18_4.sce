//Hall Voltage Computation

clear;
clc;

printf("\tExample 18.4\n");

sigma=3.8*10^7;  //(Ohm-m)^-1  Electrical Conductivity

m_e=0.0012;  //m^2/V-s  Mobility of electron

Rh=-m_e/sigma;  //Hall coefficient

printf("\nHall coefficient is : %f * 10^-11 V-m/A-Tesla\n",Rh/10^-11);

Ix=25;  //Ampere(A) Current

d=15*10^-3; //m Thickness

Bz=0.6;  //Tesla  Magnetic field

Vh=Rh*Ix*Bz/d;

printf("\nHall Voltage is : %f * 10^-8 V\n",Vh/10^-8);

//End