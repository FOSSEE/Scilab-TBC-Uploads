//Chapter-3, Problem 3.4 , Page105
//===========================================================================
clc;
clear;

//INPUT DATA
F  = 10*10^9;    //operating frequency in Hz
PRF= 800;       //pulse repetitive frequency in Hz
Vo = 3*10^8;   //velocity in m/s; 
n1 = 1;
n2 = 2;
n3 = 3;
//Calculations

lamda = Vo/F;//Wavelength in m

// blind speed Vb = n*(lamda/2)*PRF in m/s

Vb1 = n1*(lamda/2)*PRF;//first blind speed in m/s;
Vb2 = n2*(lamda/2)*PRF;//second blind speed in m/s;
Vb3 = n3*(lamda/2)*PRF;//third blind speed in m/s;

//Output
mprintf('First Blind Speed is %g m/s\n Second Blind Speed is %g m/s\n Third Blind Speed is %g m/s\n',Vb1,Vb2,Vb3);
mprintf('NOTE: IN TEXT BOOK THIRD BLIND SPEED IS WRONGLY PRINTED AS 48 m/s');
