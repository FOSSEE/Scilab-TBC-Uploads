//Exa 2.20
clc;
clear;
close;
//Given data :
N=742;//No. of guided modes(unitless)
n1=1.5;//unitlessnm
alfa=2;//characteristic index profile
NA=0.3;//unitless
d=70;//in um
a=d/2;//in um
alfa=2;//Graded index profile for parabolic
//Formula : N=(alfa/(alfa+2))/(v^2/2)
v=sqrt(N*((alfa+2)/alfa)*2);//Unitless
//Formula : v=2*%pi*a*NA/lambda
lambda=2*%pi*a*NA/v;//in um
disp(lambda,"Wavelength of light propagating in fibre in micro meter :");
//Formula : lambvda_c=lambda=2*%pi*a*NA/(2.405*(sqrt((alfa+2)/alfa)))
a=lambda*(2.405*(sqrt((alfa+2)/alfa)))/(2*%pi*NA);//in um
disp(2*a,"Diameter of fibre in micro meter : ");
//Note : Answer in the book is not accurate.