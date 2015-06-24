clc;funcprot(0);//EXAMPLE 17.2
// Initialisation of Variables
n=4;........................//No of cylinders
P=14.7;....................//Power developed in kW
N=1000;....................//Engine speed in rpm
Pmi=5.5;....................//Mean effective pressure in bar
lbyd=1.5;...................//Ratio of stroke to bore
k=0.5;.......................//For four stroke engine
//Calculations
d=((P*6)/(n*Pmi*N*k*10*(%pi/4)*lbyd))^(1/3);......................//Calculation of bore in m
l=lbyd*d;................................//Calculation of stroke in m
disp(d*1000,"The bore of the engine (in mm):")
disp(l*1000,"The stroke of the engine (in mm):")
