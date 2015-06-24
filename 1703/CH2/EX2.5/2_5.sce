clear
clc
//initialisation of variables
b= 12 //ft
h1= 3 //ft
h2= 1.5 //ft
h3= 5+(2/3) //ft
//CALCULATIONS
I= b^3/12
V= b*h1
bm= I/V
BG= bm+(h1*2/(3*b))
O= atand(sqrt((h3*2-h1-bm*2)/(bm*2+bm)))
//RESULTS
printf (' Volume of body immersed = %.f ft^3',V)
printf ('\n BM = %.f ft',bm)
printf ('\n BG = %.2f ft',BG)
printf ('\n angle of heel = %.2f degrees',O)

//The answer is a bit different due to rounding off error in textbook

