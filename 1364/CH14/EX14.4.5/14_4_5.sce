clc
//initialisation of variables
N= 2900 //rev/min
G= 415
h= 1080 //ft
n= 1000
c= 0.96
g= 32.2 //ft/sec^2
w= 2900 //rev
p= 0.78
Q= 4000 //lbf/min
//CALCULATIONS
x= ((n*h^0.75/(N*G^0.5))^(4/3))+0.3
H= h/x
D= c*sqrt(2*g*H)*2*60*12/(w*2*%pi)
P= Q*h/(p*33000)
//RESULTS
printf ('head per stage= %.f ft',H)
printf (' \n diameter= %.1f in',D)
printf (' \n Power= %.f h.p',P)
