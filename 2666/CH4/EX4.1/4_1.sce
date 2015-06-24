clc
//initialisation of variables
a=60//cu ft per min
p=14.0//psia
t1=75//F
t2=275//F
m=6//in
h=144//ft
w=53.35//cu ft
t3=535//F
h1=0.24//ft
k=33000//ft
t4=778//R
//CALCULATIONS
W=(h*p*a)/(w*t3)//lb per min
H=W*h1*(t1-t2)//Btu per min
J=m*(k/t4)//Btu per min
Q=H+J//Btu per min
//RESULTS
printf('The radiation from the compressor per minute=% f Btu per min',Q)
