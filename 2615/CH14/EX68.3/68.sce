clc
//initialisation of variables
w=0.95//kg=m
h=3206*10//kg-m
G=2250//kg
k=0.4//mm
r=45000//mm
//CALCULATIONS
n=(1/((G/r)+1))*(1-(k^2))//kg-m
Wn=h*n//kg-m
//RESULTS
printf('the efficincy of the hammer through=% f kg-m',Wn)
