clc
clear
//Input data 
I=45;//Power developed by two cylinder internal combustion engine operating on two stroke principle
N=1100;//Speed in rpm
M=6;//Mean effective pressure in kgf/cm^2
r=1.3;//Ratio of stroke to the bore
nc=2;//Number of cylinders

//Calculations
d=((I*4500*4)/(M*(r/100)*3.14*N*nc))^(1/3);//Diameter of the bore in cm
l=1.3*d;//Stroke length in cm

//Output
printf('(a)The bore diameter of the cylinder is %3.2f cm\n (b)Stroke length of the piston is %3.2f cm',d,l)
