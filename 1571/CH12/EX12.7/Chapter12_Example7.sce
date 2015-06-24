clc
clear

//INPUT
r1=5;//radius of first sphere in cm
r2=10;//radius of second sphere in cm
t1=700;//temperature of the first sphere in K
t2=500;//temperature of the second sphere in K
t=300;//temperature of the enclousure in K

//CALCULATIONS1
dc=(r2/r1)*(t1^4-t^4)/(t2^4-t^4);//ratio of c1/c2
r=r1^3*dc/r2^3;//rate of heat loss

//OUTPUT
mprintf('rate of loss of heat is %3.2f',r)
