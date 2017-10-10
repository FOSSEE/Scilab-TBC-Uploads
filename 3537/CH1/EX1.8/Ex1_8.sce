//Example 1_8
clc; 
clear;
//To Calculate the Angular position of the 10th maximum and first minimum
//The distance from centre where 10th maximum is obtained by
lamda=5460                 //units in angstrom
lamda=5460*10^-10          //units in mts
n=10
d=0.1                     //units in mm
d=0.1*10^-3               //units in mts
D=2                      //units in mts
x10=(n*lamda*D)/d        //units in mts
//angular position with respect to center is
tantheta=(x10/D)           //units in radians
z=atan(tantheta)*(180/%pi)     //units in degrees
printf("Angular position of 10th maximum is theta=%.3f degrees",z)
x1=(lamda*D)/(2*d)             //units n mts
printf("\n The distance from centre where 1st minimum is obtained is %f metres",x1)
tantheta1=(x1/D)           //units in radians
z1=atan(tantheta1)*(180/%pi)     //units in degrees
printf("\n Angular  position with respect to center is theta=%.3f degrees",z1)