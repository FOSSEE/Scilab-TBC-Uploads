//fiber optic communications by joseph c. palais
//example 5.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
d=62.5*10^-3//Daimeter in mm
delta=0.01//change in reractive index

//to find
a=d/2//radius in mm
P=a*%pi*sqrt(2/delta)//Pitch of GRIN rod lens in mm

mprintf(' Pitch of GRIN rod lens =%f mm',P)//converting P to mm 
