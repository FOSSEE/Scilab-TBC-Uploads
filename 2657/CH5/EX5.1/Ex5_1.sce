//Calculation of optimum spark timing
clc,clear
//Given:
theta_s=25 //Angle at which spark occured before top dead centre in degrees
theta_d=3 //Angle at which delay ended before top dead centre in degrees
theta_c=-12 //Angle at which combustion finish after top dead centre in degrees
p=15 //Percentage increase of delay period at half closing the throttle
//Solution:
DP=theta_s-theta_d //Delay period in degrees
CP=theta_d-theta_c //Combustion period in degrees
//(a)Full throttle, half speed
DA1=DP/2 //Delay angle in degrees
TP1=DA1+CP //Total period in degrees
TS1=TP1+theta_c //Time of spark before top dead centre in degrees
//(b)Half throttle, half speed
DA2=(DP/2)+(DP/2)*p/100 //Delay angle in degrees
TP2=DA2+CP //Total period in degrees
TS2=TP2+theta_c //Time of spark before top dead centre in degrees
//Results:
printf("\n (a)Full throttle, half speed\n\t Time of spark before top dead centre is %d degree",TS1)
printf("\n (a)Half throttle, half speed\n\t Time of spark before top dead centre is %.2f degree\n\n",TS2)
