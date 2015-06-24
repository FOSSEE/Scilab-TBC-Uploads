//Initilization of variables
F=20 //lb
theta=((60*%pi)/180) //radians
L=5 //ft
//Calculations
F_x=F*cos(theta) //Resloving the vector
F_y=F*sin(theta) //Resloving the vector
M=-F_y*L //Appling Varignon's theorem
//Negative sign tells that moment is clockwise
//Result
clc
printf('The moment of the force about O is:%f lb-ft',M) 
 
