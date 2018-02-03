//=====================================================================================
//Chapter 13 example 4


clc;clear all;

//variable declaration
T0    = 4;    //time of swing in seconds
Ig    =0.001;    //current in A
lamda = 0;      
theta  = 50;      //steady deflection in scale divisions
theta1   = 220;    //maximum throw in scale division
V        =100;  //potential of the condenser in V

//calculations
Q    = (T0/(2*%pi))*(Ig/theta)*(1+(lamda/2))*theta1;     //quantity of electricity discharged in uC
C    = Q/(V);       //capacity of the condenser in F

//result
mprintf("capacity of the condenser = %3.2d uF",(C*10^6));
