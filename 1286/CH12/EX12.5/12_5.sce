clc
//initialisation
k1=0.252
k2=0.05
t1=273//k
t2=285//k
l1=0.0175//m
l2=0.02//m
//CALCULATIONS
t=((k1/l1)*t1+(k2/l2)*t2)/(k1/l1+k2/l2)
//results
printf(' \n temperature of interface= % 1f k',t)
