clc;funcprot(0);//Example 9.11
//Initilisation of Variables
dA1=4*(10^-4);.....//Area of 1st small surface in m^2
dA2=8*(10^-4);.....//Area of 2nd small surface in m^2
r=1;.....//Distance between dA1 and dA2 in m
teta1=60;...//
teta2=30;....//
dFA1_2=(cos(teta1*(%pi/180))*cos(teta2*(%pi/180))*dA2)/(%pi*(r^2));...//Veiw factor between surfaces from dA1 to dA2
dFA2_1=(dA1/dA2)*dFA1_2;....//Veiw factor between surfaces from dA2 to dA1
disp(dFA1_2,"Veiw factor between surfaces from dA1 to dA2:")
disp(dFA2_1,"Veiw factor between surfaces from dA2 to dA1:")
