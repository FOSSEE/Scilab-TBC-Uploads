clc
//initialisation of variables
T1= 300 //K
p2= 400 //kPa
p1= 100 //kPa
p4= 100 //kPa
p3= 400 //kPa
T3= 1200 //K
e= 0.85
ee= 0.9
m= 8 //kg
cp= 1.0035
k= 1.4
//CALCULATIONS
T2s= T1*(p2/p1)^((k-1)/k)
T4s= T3*(p4/p3)^((k-1)/k)
T2= T1+((T2s-T1)/e)
T4= T3+ee*(T4s-T3)
P= m*cp*(T3-T4-T2+T1)
n= (T3-T4+T1-T2)/(T3-T4)
n1= (T3-T4+T1-T2)/(T3-T2)
//RESULTS
printf (' T4= %.2f K ',T4)
printf (' \n T2= %.2f K ',T2)
printf (' \n T4= %.1f kW ',P)
printf (' \n net efficiency= %.3f  ',n)
printf (' \n net efficiency= %.3f  ',n1)
