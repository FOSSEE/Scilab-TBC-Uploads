clear

clc
//initialisation of variables
n= 2 //strokes/sec
dp= 6 //in
ds= 18 //in
ds1=4 //in
l= 20 //ft
l1= 20 //ft
f= 0.008
la= 5 //ft
A= 60 //r.p.m
f= 0.008
w= 62.4 //lb/ft^3
g=32.2
//CALCULATIONS
V= %pi*(ds/12)*n*(dp/12)^2/4
vmp= 2*%pi*A*(ds/24)/60
vmp1= vmp*(dp^2/ds1^2)
hfmax= 4*f*(l-la)*vmp1^2/(2*g*ds1/12)
H1= 2*hfmax/3
H2= H1*13
Wls= (H1+H2)*w*(ds/12)*%pi*(dp/12)^2*n/4
mv= V/(%pi*(ds1/12)^2/4)
lh= 4*f*(l-la)*mv^2/(2*g*(ds1/12))
lhf= 12*lh
Wls1= (lh+lhf)*w*(ds/12)*%pi*(dp/12)^2*n/4
WS= Wls-Wls1
//RESULTS
printf('Work lost per second= %.f ft lb/sec',Wls)
printf ('\n Work saved per second = %.f ft-lb/sec',WS)

//The answer is a bit different due to rounding off error in textbook


