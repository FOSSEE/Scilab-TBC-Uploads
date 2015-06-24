clc
//initialisation of variables
v= 810 //km/h
v1= 40 //m/sec
cp= 1003 //J/k mol
T0= 300 //K
ec= 0.88
k= 1.4
T3= 1473.15 //K
p3= 600 //kPa
p0= 26.4 //kPa
e= 0.9
m= 90 //kg
cp1= 1.003 //J/mol K
//CALCULATIONS
v0= v*1000/3600
T1= T0+((v0^2-v1^2)/(2*cp))
T1s= T0+ec*(T0-T1)
p1= 36.79 //kPa
p2= 600 //kPa
T2s= T1*(p2/p1)^((k-1)/k)
T2= T1+((T2s-T1)/ec)
T21= T1+(T2s-T1)/ec
T4= T3+T0-T21
T4s= T3+(T4-T3)/ec
p4= p3*(T4s/T3)
T5s= p4+(p0-p4)*e
W34= m*cp1*(T3-T4)
v5= sqrt(v1^2+2*cp*(T4-T5s))
F= m*(v5-v0)
//RESULTS
printf (' T5= %.2f K ',T4s)
printf (' \n Work= %.f kW ',W34)
printf (' \n nozzle velocity= %.1f m/s ',v5)
printf (' \n thrust force= %.f N ',F)

//ANSWERS GIVEN IN THE TEXTBOOK ARE WRONG

//RESULTS
