//Example 25_11
clc();
clear;
//To describe the diffraction pattern that would be obtained by shooting bullet
h=6.63*10^-34     //units in J
m=10^-4      //Units in Kg
c=200     //units in meters/sec
p=m*c    //units in Kg meter/sec
lamda=h/p            //units in meters
width=0.2*10^-2     //units in meters
sintheta=lamda/width      //units in radians
printf("The diffraction pattern that would be obtained by shooting bullet is sin(theta)=")
disp(sintheta)
printf("Radians\n The diffraction angles are so small that the particles will travel essentially straight through the slit")
