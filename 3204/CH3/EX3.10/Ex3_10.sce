//Initilization of variables
w=2000 //N/m
Lab=3 //m
//Calculations
W=w*Lab/2 //N// Area under the curve
Lac=(2/3)*Lab //m//centroid of the triangular load system
Rb=(W*Lac)/Lab //N //sum of moment at A
Ra=W-Rb //N
//Results
clc
printf('The resultant of the distibuted load lies at %f m \n',Lac)
printf('The reaction at support A is %f N \n',Ra)
printf('The reaction at support B is %f N \n',Rb)
