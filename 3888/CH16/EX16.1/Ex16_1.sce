//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 16.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=238;                                            //Transformer primary voltage in kV
Em=110;                                           //Transformer secondary voltage in kV
f=50;                                             //Supply frequency in Hz
u=20;                                             //Commutation angle in degree
alpha1=30;                                        //Delay angle 1 in degree
alpha2=90;                                        //Delay angle 2 in degree
alpha3=150;                                       //Delay angle 3 in degree
Vdo=3*sqrt(3*2)*Em/(%pi*sqrt(3));                 //Direct output voltage in kV
Vd1=Vdo/2*(cosd(alpha1)+cosd(alpha1+u));          //Direct output voltage when commutation angle 20 and delay angle is 30 degree in kV
Vd2=Vdo/2*(cosd(alpha2)+cosd(alpha2+u));          //Direct output voltage when commutation angle 20 and delay angle is 90 degree in kV
Vd3=Vdo/2*(cosd(alpha3)+cosd(alpha3+u));          //Direct output voltage when commutation angle 20 and delay angle is 150 degree in kV

printf("\nThe direct voltage output is %.2f kV",Vdo);
printf("\nThe direct voltage output when commutation angle 20 and delay angle is 30 degree is %.2f kV",Vd1);
printf("\nThe direct voltage output when commutation angle 20 and delay angle is 90 degree is %.2f kV",Vd2);
printf("\nThe direct voltage output when commutation angle 20 and delay angle is 150 degree is %.2f kV",Vd3);
