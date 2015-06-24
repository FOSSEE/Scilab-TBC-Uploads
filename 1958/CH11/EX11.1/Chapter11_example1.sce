clc
clear
//Input data
r1=1.538//Refractive index of the crown glass for violet
r2=1.52//Refractive index of the crown glass for red

//Calculations
ip1=atand(r1)//Polarizing angle in degrees
ip2=atand(r2)//Polarizing angle in degrees

//Output
printf('Polarizing angles for violet and red are %3.2f degrees and %3.2f degrees',ip1,ip2)
