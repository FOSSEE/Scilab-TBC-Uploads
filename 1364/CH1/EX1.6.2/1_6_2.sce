clc
//initialisation of variables
ws= 1/35 //tonf/ft^3
A= 10500 //ft^2
wf= 1/36 //tonf/ft^3
Wo= 7000 //tonf
Wf= 6950//tonf
li= 300 //ft
lh= 400 //ft
l= 7200 //ft
l1=50 //ft
l2= 10 //ft
l3= 250 //ft
l4= 40 //ft
//CALCULATIONS
Dod= (1/A)*((Wo/wf)-(Wf/ws))
Ac= ws*A*0.835
x= (l1*l2+l3*l4)/(l+l3-l1*l2)
do= (x/lh)*li
//RESULTS
printf ('change of draught= %.3f ft',Dod)
printf (' \n Additional cargo=%.f tonf',Ac)
printf (' \n change of trim=%.1f ft',do) 
