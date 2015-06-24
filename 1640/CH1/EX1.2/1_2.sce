clc 
//initialisation of variables
a= 6 //ft
h= 2 //ft
sm= 13.6
sw= 1
sl=0.8
//CALCULATIONS
dh= h*(sm-sw)+a
h1= (dh-a)/(sl-1)
//RESULTS
printf ('pressure difference in ft of water= %.1f ft of water ',dh)
printf ('\n reading of mercury= %.f ft of liquid ',h1)
