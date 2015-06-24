clc
//initialisation of variables
d= 200 //mm
b= 150 //mm
tw= 7 //mm
tf= 10 //mm
//CALCULATIONS
ye= (b*tf*(tf/2)+(d-tf)*tw*((d+tf)/2))/(b*tf+(d-tf)*tw)
I= ((b*ye^3)/3)-(b-tw)*(((ye-tf)^3)/3)+(tw*((d-ye)^3)/3)
Ze= I/(d-ye)
yp= (b*tf+(d-tf)*tw)/(2*b)
Zp= b*yp*yp/2+b*(tf-yp)*(tf-yp)/2+(d-tf)*tw*((d-tf)/2+(tf-yp))
f= Zp/Ze
//RESULTS
printf ('fie= %.2f',f)
