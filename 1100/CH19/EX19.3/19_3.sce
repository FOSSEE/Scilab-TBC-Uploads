clc
//initialisation of variables
h1= 2500 //Btu/sq ft hr F
r= 10 //in
t= 0.375 //in
Ts= 500 //F
Ta= 80 //F
r2= 5.375 //in
r1= 5 //in
r3= 7.375 //in
kp= 26 //Btu ft/hr
ki= 0.045 //Btu ft/hr
h1= 2500 //Btu/sq ft hr F
h3= 1.6 //Btu/sq ft hr F
r4= 14.750
//CALCULATIONS
R1= 1/(h1*%pi*(r/12))
Rp= log(r2/r1)/(2*%pi*kp)
Ri= log(r3/r2)/(2*%pi*ki)
R3= 1/(h3*%pi*(r4/12))
R0= R1+Rp+Ri+R3
T3=Ta+ (Ts-Ta)*R3/R0
//RESULTS
printf ('Temperature at the interface= %.6f F',T3)
