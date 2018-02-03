//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 16.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


Em=400;                                  //Ac supply voltage in kV
Vd=500;                                  //Dc supply voltage in kV
Id=1;                                    //Dc current in A
alpha=20;                                //Firing angle in degree
Vdo=3*sqrt(3*2)*Em/(%pi*sqrt(3));        //Direct output voltage in kV
Rc=-(Vd-(Vdo*cosd(alpha))/Id);           //Effective Commutation resistance in Ohm


printf("\nThe effective commutation resistance is %.2f Ohm",Rc);







