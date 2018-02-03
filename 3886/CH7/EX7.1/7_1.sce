//Diameter of wheels
//refer fig.7.2
d1=240  //mm
N1=250  //rpm
N2=100  //rpm
d2=N1*d1/N2  //mm
ans1=d1+d2  //mm
d3=840/3  //mm
d4=840-d3  //mm
d5=(840)/(1+(5/3))  //mm
d6=840-d5  //mm
printf("\nd2=%.2f mm\nd3=%.2f mm\nd4=%.2f mm\nd5=%.2f mm\nd6=%.2f mm",d2,d3,d4,d5,d6)


