//Chapter-13, Example 13.5, Page 558
//=============================================================================
clc
clear

//INPUT DATA
po2=2;//Pressure of O2 in bar
Di=0.025;//inside diamter of the pipe in m
L=0.0025;//Wall thickness in m
a=(0.21*10^-2);//Diffusivity of O2 in m^2/s
S=(3.12*10^-3);//Solubility of O2 in k.mol/m^3.bar
DAB=(0.21*10^-9);//Binary diffusion coefficient in m^2/s

//CALCULATIONS
CAi=(S*po2);//Concentration of O2 on inside surface in kmol/m^3
RmA=((log((Di+(2*L))/Di))/(2*3.14*DAB));//Diffusion resistance in sm^2
Loss=(CAi/RmA)/10^-11;//Loss of O2 by diffusion per meter length of pipe *10^-11

//OUTPUT
mprintf('Loss of O2 by diffusion per meter length of pipe is %3.2f*10^-11 kmol/s',Loss)

//=================================END OF PROGRAM==============================
