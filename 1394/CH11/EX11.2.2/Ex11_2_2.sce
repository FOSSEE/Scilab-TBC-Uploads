
clc
//initialization of variables
phi = 0.2
d = 200*10^-4 // cm
dia = 3.8 // cm
Q = 4.1 // blood flow in cc/sec
k = 3.6*10^-4 // cm/sec
l = 30 // cm
//Calculations
a = 4*phi/d // cm^2/cm^3
B  = Q/((%pi*dia^2)/4) // cm/sec
ratio1 = 1/(1+(k*a*l/B))// D equals B
percent1 = (1-ratio1)*100 // percentage of toxins removed when dialystate flow equals blood flow
D = 2*B // in second case
ratio2 =1/(((1/(exp(-k*a*l/D)))-0.5)*2) // when D =2B
percent2 = (1-ratio2)*100 // percentage of toxins removed when dialystate flow is twice the blood flow
ratio3 = exp(-k*a*l/B)// when dialystate flow is very large
percent3 = (1-ratio3)*100 // percentage of toxins removed when dialystate flow is very large
//Results
printf("The percentage of toxins removed when dialystate flow equals blood flow is %.f",percent1)
printf("\nThe percentage of toxins removed when dialystate flow is twice the blood flow is %.f",percent2)
printf("\nThe percentage of toxins removed when dialystate flow is very large is %.f",percent3)
