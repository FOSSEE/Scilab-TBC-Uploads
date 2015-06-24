// Power required for rolling
clc
t1 = 20 // initial thickness in mm
t2 = 12 // final thickness in mm
R = 300 // roll radius
N = 100 // rpm of roll
w = 250 // width in mm
K = 895 // in MPa
n = 0.49 // from table
mu = 0.1 // frictional coefficient
printf("\n Example 6.4")
L = sqrt((R*1e-3)*(t1-t2)*1e-3)
epsilon = log(t1/t2)
Y_bar = K*epsilon^n/(1+n)
Y_bar_1 = Y_bar*(1+(mu*L/((t1+t2)*1e-3)))
F = L*w*Y_bar_1*1e3
p = 2*%pi*F*L*N/60000

printf("\n Power required for rolling is %d kW.",p)
// Answer in book is 3111kW

