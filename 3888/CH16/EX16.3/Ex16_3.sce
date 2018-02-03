//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 16.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=500;                            //Dc supply voltage in kV
ang1=20;                          //Advance angle in degree
ang2=10;                          //Extinction angle in degree
Vdi=1/2*(cosd(20)+cosd(10));      //Dc voltage in kV
Em=(V*%pi)/(Vdi*3*sqrt(3));       //Ac output voltage in kV


printf("\nThe ac voltage output of the inverter is %.2f kV",Em);








