clc
clear
//Input data
T=[100,300];//Temperature of ice and steam point in the scale
P=[1.86,6.8];//Values of thermometric properties at ice point nad steam point respectively
P1=2.5;//Thermometric property

//Calculations
A=[log(P(2)) 1
   log(P(1)) 1] //Coefficient matrix
B=[T(2)
   T(1)]  //Constant matrix
X=inv(A)*B;//Variable matrix
t=(X(1)*log(P1)+X(2));//Required temperature in degree C

//Output
printf('Temperature corresponding to the thermometric property is %3.1f degree C',t)
