// Power required for rolling
clc
t1 = 6 // initial thickness in mm
t2 = 3 // final thickness in mm
v = 0.6 // velocity in m/s
x = 0.35 // fractional difference between values
K = 895 // in MPa
n = 0.49 // from table

printf("\n Example 6.7")

epsilon = log(t1/t2)
Y_bar = K*epsilon^n/(1+n)
Af = %pi/4*(t2*1e-3)^2
F = Y_bar*Af*epsilon
power = F*v // power
printf("\n Part A:")
printf("\n Power required for operation is %d W.",power*1e6)
p_act = (1+x)*power
Yf = K*epsilon^n
sigma_d = F*(1+x)/Af
p = Yf - sigma_d

printf("\n\n Part B:")
printf("\n Die pressure at exit of die is %d MPa.",p)

