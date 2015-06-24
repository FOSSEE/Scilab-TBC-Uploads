clc
//initialisation of variables
w=100000//ft
c=250//per capita
p1=0.3//percent
p2=0.1//percent
p3=0.60//percent
w1=15//mgd
//CALCULATIONS
T=c*w//$
W=p1*T//$
W1=p2*T//$
W2=p3*T//$
W3=((w1)^2/3)*T//$
//RESULTS
printf('the replacement cost of the water of a city=% f $',W3)
