//Initilization of variables
P=5000 //N
lAB=5 //m
lOB=1.443 // m
alpha=30 //degree //angle made by force P with the beam
//Calculations
theta=atand(lOB/lAB) // degree // eq'n 1
Xa=(P*cosd(alpha)) //N //using eq'n 4
Ya=Xa*tand(theta) //N // from eq'n 3 & 4
Rb=P*sind(alpha)-Ya // N  from eq'n 5// substuting value of Ya in eq'n 5
Ra=sqrt((Xa^2)+(Ya^2)) //N
//Results
clc
printf('The X component of reaction at A is %f N \n',Xa)
printf('The Y component of reaction at A is %f N \n',Ya)
printf('The reaction at support A is %f N \n',Ra)
printf('The reaction at support B is %f N \n',Rb)
// The decimal point error might cause a small discrepancy in the answers
