//Example 1_9
clc();
clear;
//To Find the least distance of that point from central maximum 
lamda1=650                     //units in nm
lamda1=650*10^-9               //units in mts
lamda2=500                     //units in nm
lamda2=500*10^-9               //units in mts
D=1                            //units in mts
d=0.5                         //units in mm
d=0.5*10^-3                   //units in mts
n_m=lamda2/lamda1
printf("This means that 10th bright fringe of 650 nm coincides with 13th fringe of wavelength 500 nm")
n=10                           //least distance of that point from central maximum
x=((n*lamda1*D)*10^3)/d
printf("\n least distance of that point from central maximum is %d mm",x)
