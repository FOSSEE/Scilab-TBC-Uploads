clc
//initialisation of variables
d= 300 //mm
b= 150 //mm
tw= 8 //mm
tf= 12 //mm
//CALCULATIONS
Zp= b*tf*(d-tf)+(tw*((d-2*tf)^2))/4
Ze= (2/d)*((b*d^3)/12-((b-tw)*(d-2*tf)^3)/12)
f= Zp/Ze
//RESULTS
printf ('f= %.2f',f)
