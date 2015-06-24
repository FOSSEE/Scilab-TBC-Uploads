clc
//initialisation of variables
T1=900//k
T2=300//k
Q1=10^6//cal
//CALCULATIONS
r=(1-(T2/T1))
r1=r*100
w=r*Q1
w1=w*4.2//J
w2=w1/(3.6*10^6)
w3=w1/(1.609*10^-19)
//results
printf(' \n efficiency= % 1f ',r1)
printf(' \n work in KWH= % 1f KWH',w2)
printf(' \n work in ev= % 1e ev',w3)
