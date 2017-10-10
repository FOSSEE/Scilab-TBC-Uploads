//Example number 3.7, Page number 48

clc;clear;
close;

//Variable declaration
a=poly([0],'a')
b=poly([0],'b')
X=3;
Y=4;
Z=0;       //intercepts
//Calculation
x=a/X;
y=b/Y;
z=%inf ;      //miller indices
//Result
printf("miller indices are : \n")
disp (z,y,x)
