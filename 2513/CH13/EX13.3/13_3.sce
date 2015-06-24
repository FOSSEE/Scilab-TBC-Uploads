clc
//initialisation of variables
w=500//ft
p=20//psig
h=40//psig
h1=1000//in
q=1250//ft
g=2.308/0.75//ft
g1=2.308/1.00//ft
s=5200//gpm
a=250//gpm
//CALCULATIONS
H=[h1-(1/2)*(w)]//ft
H1=(h-p)*g//percent
Q=[q-(1/2)*(w)]//ft
Q1=(h-p)*g1//percent
S=s/a//gpm
//RESULTS
printf('the number of standard fire streams=% f gpm',S)
