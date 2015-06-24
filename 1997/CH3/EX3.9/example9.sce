//Chapter-3, Problem 3.9 , Page107
//===========================================================================
clc;
clear;

//INPUT DATA
F  = 6*10^9;    //operating frequency in Hz
PRF= 1000;       //pulse repetitive frequency in Hz
Vo = 3*10^8;   //velocity in m/s; 
n2 = 2;        // n value for second blind speed
n3 = 3;       // n value for third blind speed
//Calculations

lamda = Vo/F//Wavelength in m

// blind speed Vb = n*(lamda/2)*PRF in m/s

Vb2 = n2*(lamda/2)*PRF  //second blind speed in m/s;
Vb21 = Vb2*18/5 ;       //second blind speed in kmph; 
Vb3 = n3*(lamda/2)*PRF //third blind speed in m/s;
Vb31 = Vb3*18/5;       //third blind speed in kmph;

//Output
mprintf('Second Blind Speed is %g kmph\n Third Blind Speed is %g kmph\n',Vb21,Vb31);

