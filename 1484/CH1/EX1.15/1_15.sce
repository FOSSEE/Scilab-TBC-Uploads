clc 
//initialisation of variables
pa= 10 //lbs/in^2
h= 8 //ft
h1= 6 //ft
w= 62.4 //lbs/ft^3
pg= 10 //lbs/in^2
//CALCULATIONS
Pa= pa*144
Pa1= w*h1
Pt= (Pa*h+Pa1*(h1/2))
y= (Pa*h*(h/2)+(Pa1*h1*(h-h1)/2))/Pt
//RESULTS
printf ('Depth of the centre of pressure= %.2f ft from the base',y) 
