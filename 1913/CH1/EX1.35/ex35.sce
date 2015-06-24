clc
clear
T=[32,212];//Temperatures of ice point and steam point respectively
P=[1.86,6.81];//P values at ice point and steam point respectively
P1=2.5;//Reading on the thermometer

//Calculations
A=[log(P(2)) 1
   log(P(1)) 1] //Coefficient matrix
B=[T(2)
   T(1)]  //Constant matrix
X=inv(A)*B;//Variable matrix
t=(X(1)*log(P1)+X(2));//Required temperature in degree C

//Output
printf('Temperature corresponding to the thermometric property is %3.0f degree C',t)
