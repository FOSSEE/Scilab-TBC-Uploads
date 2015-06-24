clc
//to calculate orders
//let E=(e+d) 
//formula is (e+d)*sin thita=n*lambda
//for maximum order to be possible thita=90 degree
//sin theta=1
E=2.54/2620 //in cm
lambda=5*10^-5 //wavelength of the incident light in cm
n=E/lambda
disp("the orders will be visible is n="+string(n)+"unitless")
