clc
//initialisation of variables
ea= 1000*10^-6
eb= -200*10^-6
ec= -300*10^-6
sigmay= 0 //N/mm^2
E= 70000 //N/mm^2
mu= 0.3
d= 50 //mm
//CALCULATIONS
e1= ((ea+ec)/2)+sqrt(((ea-eb)^2+(ec-eb)^2)/2)
e2= ((ea+ec)/2)-sqrt(((ea-eb)^2+(ec-eb)^2)/2)
sigma1= (E*(e1+mu*e2))/(1-mu^2)
sigma2= (E*(e2+mu*e1))/(1-mu^2)
sigmax= sigma1+sigma2
Txy= sqrt((((sigma1*2)-(sigmax))^2-(sigmax^2)))/2
P= sigmax*((%pi/4)*(d^2))
T= Txy*((%pi/32)*(50^4)/25)
//RESULTS
printf ('T= %.2fNm',T) 
printf ('\n P= %.2fN',P) 
