//Example 1_2_u1
clc();
clear;
//To calculate the wavelength
//First case to calculte the wavelengths of the light source to obtain fringes 0.46*10^-2 mts
lamda1=4200    //units in armstrongs
lamda1=lamda1*10^-10   //units in mts
betaa=0.64*10^-2     //units in mts
D_d=betaa/lamda1      //units in mts
//Second caseDistance between slits and screen is reduced to half
beeta1=0.46*10^-2     //units in mts
lamdaD_d=beeta1*2             //units in mts
lamda=(lamda1*lamdaD_d)/betaa           //units in mts
lamda=lamda*10^10      //units in armstrongs
printf("The wavelength of the Light source is %.1fArmstrongs",lamda)
