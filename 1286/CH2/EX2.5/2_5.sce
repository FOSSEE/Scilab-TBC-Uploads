clc
//initialisation
t1=0//c
t2=20//c
g=0.000011//1/c
h=0.000019//1/c
l=41.628//cm
//CALCULATIONS
l20=l*(1+(h*(t2-t1)))
l0=l20/(1+(g*(t2-t1)))
//results
printf(' true length of rod at 20 c= % 1f C',l20)
printf(' true length of rod at 0 c= % 1f C',l0)
