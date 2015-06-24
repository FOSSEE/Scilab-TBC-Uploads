clc
//initialisation of variables
k1= 0.302e-7 //cm/sec
k2= 0.12e-7 //cm/sec
e1= 1.1
e2= 0.9
e= 0.75
//calcualtions
n= (log10((k1/k2)*((1+e1)/(1+e2))))/log10(e1/e2)
C= k1/(e1^n/(1+e1))
k= C*(e^n/(1+e))
//results
printf ('hydraulic conductivity = %e cm/sec ',k')
