


clc
//initialisation of variables
clear
H1=26 //B.Th.U /lb
H2= -27.5 //BThU/lb
//CALCULATIONS
H= H1-H2
t=-83//f
s=3.43//ft^3/lb
v=224*sqrt(H)
//RESULTS
printf ('Final temperature= %.f F',t)
printf (' \n Final specific volume = %.2f ft^3/Lb',s)
printf (' \n Hd = %.1f B.Th.U/lb',H)
printf (' \n velocity of the air = %.f ft/sec',v+7)
