clc
//initialisation of variables
p=20//min
N=0.012//in
k=2.19//min
l=k+1.97//min
q=340/(60*3.94)//min
r=2.56*0.508//min
del=0.42//min
j=84.28//min
w1=0.92//min
//CALCULATIONS
r1=r*k//cfs
w=p+q//min
G=j-del//min
S=(G-w1)//min
//RESULTS
printf('The required capacity and find the slop size and hydraulic=% f min',S)
