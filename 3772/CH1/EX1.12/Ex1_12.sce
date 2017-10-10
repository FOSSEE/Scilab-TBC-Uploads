// Problem no 1.12,Page no.16


clc;clear;
close;

//Right Circular Cyclinder
//m_1=(16*%pi*h*rho_1) //gm 
//y_1=4+h*2**-1 //cm

//Hemisphere
//m_2=256*%pi*rho_1 //gm 
y_2=2.5 //cm 

Y_bar=4 //cm
r=4 //cm

//Calculation

//Y_bar=(m_1*y_1+m_2*y_2)*(m_1+m_2)**-1 //cm //Centroid
h=(402.114*25.132**-1)**0.5

//Result
printf("The value of h is %.2f cm",h)
