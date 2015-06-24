clc
//Initialization of variables
n=0.0714
R=1545
T=560 //R
P=400 //psia
//clculations
VN=n*R*T/(P*144)
VO=(0.0238)*R*T/(P*144)
V=VN+VO
//results
printf("Total volume = %.3f ft^3",V)
