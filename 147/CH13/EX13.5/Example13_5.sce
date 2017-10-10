close();
clear;
clc;
//operating voltage 'V', operatinf frequency 'f' of transformer, core flux 'phi'
phi = 4.13 * 10^(-3); //Wb
f = 60; //Hz
E1 = 110; //V
//number of turns on primary
N1 = E1/(4.44*phi*f);
mprintf("Required number of turns on primary, N1 = %d",round(N1));