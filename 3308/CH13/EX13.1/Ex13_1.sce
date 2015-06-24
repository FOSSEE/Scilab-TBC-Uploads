clc 
// Given that
w=9 //in inch width of thee strip
ho=1 //in inch initial thickness of the strip
hf=0.80 //in inch thickness of the strip after one pass
r=12 //in inch roll radius
N=100 //in rpm

// Sample Problem on page no. 323

printf("\n #Calculation of roll force and torque# \n")

L=(r*(ho-hf))^(1/2)

E=log(1/hf)//absolute value of true strain

Y=26000 //in psi average stress from the data in the book 
F=L*w*Y // roll force
F1=F*4.448/(10^6)//in mega newton
printf("\n\nRoll force = %f MN ",F1)

//answer in the book is round off and given 363000lb

P=(2*3.14*F*L*N)/(33000*12)
P1=P*7.457*(10^2)/(10^3)//in KW
printf("\n\npower per roll = %f KW ",P1)

//answer in the book is 670 KW due to round off of the roll force

Tp=2*P1//total power
printf("\n\nTotal power = %f KW ",Tp)

//answer in the book is 1340KW due to round off of the roll force
