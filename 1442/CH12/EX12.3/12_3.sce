clc
//initialisation of variables
m1= 0.5 //kg
cv1= 0.6496 //kJ/kg K
T1= 80 //C
m2= 1 //kg
cv2= 0.6299 //kJ/kg K
T2= 150 //C
M= 32 //kg
M1= 44 //kg
V1= 0.11437 //m^3
V2= 0.1 //m^2
R= 8.314 //J/mol K
//CALCULATIONS
T= (m1*cv1*(273.15+T1)+m2*cv2*(273.15+T2))/(m1*cv1+m2*cv2)
p= ((m1/M)+(m2/M1))*R*T/(V1+V2)
S= m1*(cv1*log(T/(273.15+T1))+(R/M)*log((V1+V2)/V1))+m2*(cv2*log(T/(273.15+T2))+(R/M1)*log((V1+V2)/V2))
//RESULTS
printf (' final temperature= %.1f kPa',T)
printf (' \n final pressure= %.1f kPa',p)
printf (' \n change in entropy= %.4f kJ/K',S)
