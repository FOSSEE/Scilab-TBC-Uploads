//Page Number: 298
//Example 5.13
clc;
//Given
f=9D+9;//hz
v0=250;//V
l=0.5;//cm
l1=l/100;//m

//Bandwidth
n=3;
df=(n+(3/4))/(6.774D-6*l1*sqrt(v0));//hz
disp('Mhz',df/10^6,'Bandwidth:');
