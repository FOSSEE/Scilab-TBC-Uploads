//Initilization of variables
//Co-ordinates with respect to point O
x=17.9 //ft
y=6.91 //ft
z=46.3 //ft
Fz=-4000 //lb
Fy=0 //lb
//Calculation
Mx=y*Fz-z*Fy //lb-ft
//Result
clc
printf('The scalar coefficient of the i term is the moment about the X-Axis Mx:%f lb-ft lb-ft',Mx) //lb-ft
//The answer in the text book is incorrect due to decimal point accuracy in scilab
