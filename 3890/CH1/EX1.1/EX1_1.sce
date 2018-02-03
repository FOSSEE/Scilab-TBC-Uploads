//Electric machines and power systems by Syed A Nasar
//Publisher:Tata McGraw Hill
//Year: 2002 ; Edition - 7 
//Example 1.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

pi=900;                //input power during on period in watts
ton=20;                //on period in minutes
toff=40;               //off period in minutes

E=(pi*ton*60+0*toff*60);     //energy consumed per hour in w s
p_av=E/(60*60);              //the average power in watts

printf('the energy consumed per hour is %d in w-s\n',E)
printf('the average power is %d in watts\n',p_av)


