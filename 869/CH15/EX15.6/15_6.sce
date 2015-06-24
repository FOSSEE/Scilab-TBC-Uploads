clc
//initialisation of variables
T= 15000 //psi
x1= 3 //in
x2= 3 //in
y1= 3 //in
y2= 3 //in
d= 0.5 //in
n= 4
//CALCULATIONS
P= T*(%pi/4)*d^2/(sqrt((1/n)^2+(1/((sqrt(y1^2+y2^2)/y1)*n))^2+(2*(1/n)*(1/(n*(sqrt(y1^2+y2^2))/y1))*cosd(45))))
P1= T*(%pi/4)*d^2/((1/n)+(y1/(n*y1)))
if (P>P1)
    printf ('Stornger P= %.2f lb',P)
else
    printf ('Stornger  P= %.2f lb',P1)
end
