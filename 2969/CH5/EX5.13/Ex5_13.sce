clc
clear
//DATA GIVEN
ETAotto=60;                    //Efficiency of otto cycle in %
shr=1.5;                       //ratio of specific heats

//ETAotto=1-1/(r)^(shr-1)
r=(1/(1-ETAotto/100))^(1/(shr-1)); //compression ratio

printf('The compression ratio is: %1.2f.',r);
