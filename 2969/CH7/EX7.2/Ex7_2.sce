clc
clear
//DATA GIVEN
//L=1.5D
n=4;                          //no. of cylinders
P=14.7;                       //power developed in kW
N=1000;                       //engine speed in R.P.M.
Pmi=5.5;                      //mean effective pressure in bar
k=0.5;                        //for 4-stroke cylinder

//INDICTED POWER, I.P.=(n*PMI*l*A*N*k*10)/6 kW
//A=(pi/4)*D^2,
//L=1.5D,
D=((6*P)/(10*k*N*n*Pmi*1.5*(%pi/4)))^(1/3);     //bore diameter in m
L=1.5*D;                                        //length of stroke in m

printf('The Bore diameter is: %5.2f mm.\n',(D*1000));
printf(' The Stoke length is: %5.2f mm.\n',(L*1000));
