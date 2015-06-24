clc
//initialisation of variables
clear
ihp= 500 //ihp
w= 300 //rpm
p= 80 //per cent
r=2
P1= 250 //psia
P2= 30 //psia
df= 0.82
//CALCULAATIONS
tm= 0.5*P1*(1+log(r))-P2
D= (ihp*33000*(p/100)*12*4/(2*df*tm*%pi*w))^(1/3)
//RESULTS
printf (' Bore = %.1f in',D)
