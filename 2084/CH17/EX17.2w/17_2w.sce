//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.2w
//calculation of the refractive index of the glass

//given data
x1=2//distance(in cm)travelled through the glass
x2=2.25//distance(in cm)travelled through the water
muw=1.33//refractive index of water

//calculation
//for 'x' distance travelled through a medium of refractive index 'mu',the optical path is 'mu*x'
mug=muw*x2/x1//refractive index of glass

printf('the refractive index of the glass is %3.2f',mug)
