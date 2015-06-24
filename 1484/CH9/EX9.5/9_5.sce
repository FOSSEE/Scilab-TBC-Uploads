clc 
//initialisation of variables
w= 750 //R.P.M
t= 0.02 //in
r1=9 //in
r2= 5 //in
u= 0.003 //slug/ft sec
//CALCULATIONS
T=  u*%pi*(2*%pi*w/60)*((r1/24)^4-(r2/24)^4)*2*%pi*w/(2*t/12*33000)
//RESULTS
printf ('horse power required to overcome= %.1f hp',T)
