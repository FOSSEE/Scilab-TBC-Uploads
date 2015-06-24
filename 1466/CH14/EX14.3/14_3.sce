
clc
//initialisatoin of variables
Hd=27.7//CHU
g=32.2//ft/sec^2
v1=300//ft/sec
j=1400
k=0.85
//CALCULATIONS
v2=sqrt((v1*v1)+(2*g*k*Hd*j))
//RESULTS
printf (' velocity= %.f ft/sec',v2)
