clc
clear
//Input data
P1=1.5;//Thermometric properties at ice point
P2=7.5;//Thermometric properties at steam point
P3=3.5;//Thermometric property

//Calculations
A=[log(P2) 1
   log(P1) 1] //Coefficient matrix
B=[100
   0]      //Constant matrix
X=inv(A)*B //Inverse matrix
t=(X(1)*log(P3)+X(2));//Required temperature in degree C

//Output
printf('The required temperature is %3.6f degree C',t)
