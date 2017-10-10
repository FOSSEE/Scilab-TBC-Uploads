
//Problem 6
//calculate the interplanar spacing of the crystal
clear
clc
w=0.58//wavelength of monochromatic X-rays
a=6.45,b=9.15,c=13//Bragg's reflection are obtained at these angles (in degrees)
d=w/(2*sind(a))//value of d/n in first case (in A)
d1=w/(2*sind(b))//value of d/n in second case (in A)
d2=w/(2*sind(c))//value of d/n in third case (in A)
printf('value of d/n in first case= %.3f A\n',d)
printf('value of d/n in second case=%.3f A\n',d1)
printf('value of d/n in third case=%.3f A\n',d2)
printf('it is clear from all the cases that the values of d/n (d,d1,d2) in first case is almost twice that of third case.\nThis shows that angles 6.45 degrees and 13 degrees represent the 1st and 2nd order reflection maxima from one set of parallel planes.\nTherefore spacing can be obtained by putting n=1 in 1st case or n=2 in 3rd case \n')
n1=1
n3=2
d3=(d)*n1//interplanar spacing of the crystal
printf('\n therefore interplanar spacing of the crystal = %.3f A',d3)