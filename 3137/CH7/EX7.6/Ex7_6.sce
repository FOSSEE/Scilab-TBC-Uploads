//Initilization of variables
F=500 //N
A=1000 //N
theta=60 //degrees
l=20 //m
//Calculations
//Taking moment about point G
R_c=(20*3*A+50*F+30*F+10*F)/40 //N
//Returning to fig7-17
//Taking moment about point C
BD=(l*A+(l/2)*F)/(l*sind(theta)) //N
//Taking sum of forces in vertical direction
CD=(A+F-R_c)/sind(theta) //N
//Result
clc
printf('The forces in the members are as follows\n')
printf('BD=%fN and CD=%fN,Also the reaction at C is %fN',BD,CD,R_c)
//Decimal accuracy causes discrepancey in answers
