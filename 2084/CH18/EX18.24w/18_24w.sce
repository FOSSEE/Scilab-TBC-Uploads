//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.24w
//calculation of new focal length of a lens on immersing in water 

//given data
f=12; //focal length(in cm) of the lens
mu1=1; //refractive index of air
mu2=1.5; //refractive index of glass
mu3=1.33; //refractive index of water
//let (1/R1)-(1/R2)=a   variable

//calculation
a=1/((mu2/mu1-1)*(f)) //refractive mediums in cascading
f_new=1/((mu2/mu3-1)*a)//refractive mediums in cascading

disp(f_new,'new focal length(in cm) of a lens on immersing it in water is');
 
