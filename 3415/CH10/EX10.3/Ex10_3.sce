//fiber optic communications by joseph c. palais
//example 10.3
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc;
clear all;
wc=20//wavelength change in Ghz/degree celcius
fo=100//frequency offset in MHz

//to find
allowed_change=fo*10^-3/wc//allowed change in temperature in degree celcius
mprintf("Allowed change is =%f degree Celcius",allowed_change)
