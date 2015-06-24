clc
// given that
L = 1// let unit length
l1 = 0.45*L // initial point
l2 = 0.55*L // Final point


printf("Example 2.26 \n")
p = (1/L)*((l2-(L/(2*%pi) *sin(2*l2*%pi/L)))- (l1-(L/(2*%pi) *sin(2*l1*%pi/L)))) // Calculation of probability of finding particle
p_per = p*100 // probability of finding particle in percentage
printf("\n Probability of finding electron between \n %fL and %fL is %f percent.",l2,l1,p_per)
