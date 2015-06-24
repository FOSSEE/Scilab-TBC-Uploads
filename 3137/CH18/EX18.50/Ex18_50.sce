//Initilization of variables
W=4000 //lb
k=3 //ft
wp=(1/60)*2*%pi //rad/s
ws=(300/60)*2*%pi //rad/s
d=3.5 //ft
g=32.2 //ft/s^2
//Calculations
I=(W/g)*k^2 //slug-ft^2
M=I*ws*wp //lb-ft
//Now equating M to Rf-Rr gives one equations and vertical sum yields other
//solving them by matrix method
A=[1,-1;1,1]
B=[M*(2/d);W]
C=inv(A)*B //lb
//Result
clc
printf('The weight of Rf and Rr are %f lb and %f lb respectively',C(1),C(2)) 
