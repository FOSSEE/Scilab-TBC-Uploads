clc
//initialisation
t1=700//k
t2=290//k
E=10000//w m^-2
si=5.7*10^-8
//CALCULATIONS
t=(t1^4+t2^4)/2
T=t^0.25
t1=E/si
T1=t1^0.25
//results
printf(' \n temperature its rate will be halved= % 1f k',T)
printf(' \n temperature of body= % 1f k',T1)
