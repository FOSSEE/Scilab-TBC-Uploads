clc
//initialisation of variables
h11= 2786.2 //kJ/kg
h12= 340.5 //kJ/kg
h7= 327.9 //kJ/kg
h6= 169.0 //kJ/kg
h10= 756.7 //kJ/kg
h9= 480.9 //kJkg
h14= 2818 //kJ.kg
h15= 762.8 //kJ/kg
h8= 462.7 //kJ/kg
h13= 2974.5 //kJ/kg
h5= 168.8 //kJ/kg
P= 150 //kW
v1= 0.02293 //m^3/kg
v= 40 //m/s
h1= 3448.6 //kJ/kg
h3= 3478.5 //kJ/kg
h2= 2818 //kJ/kg
h4= 2527.1 //kJ/kg
//CALCULATIONS
y1= (h10-h9)/(h14-h15)
y2= ((h8-h7)-y1*(h15-h7))/(h13-h7)
y3= (h7-h6)*(1-y1-y2)/(h11-h12)
qin= h1-h10+(1-y1)*(h3-h2)
qout= (h5-h4)*(1-y1-y2)+y3*(h4-h12)
wnet= qin+qout
n= wnet*100/qin
m1= P*1000/wnet
A1= m1*v1/v
D= sqrt(4*A1/%pi)
//RESULTS
printf (' quality= %.4f ',y1)
printf (' \n quality= %.4f ',y2)
printf (' \n quality= %.4f ',y3)
printf (' \n efficiency= %.2f percent',n)
printf (' \n mass flow rate= %.2f kg/s',m1)
printf (' \n diameter= %.3f m',D)
