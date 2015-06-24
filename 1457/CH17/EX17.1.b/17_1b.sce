clc
//Initialization of variables
ne=600 
gpm=1600
Ns=500
Head=900 //ft
//calculations
h=(ne*sqrt(gpm) /Ns)^(4/3)
n=Head/h
//results
printf("No. of stages = %d",n+1)
