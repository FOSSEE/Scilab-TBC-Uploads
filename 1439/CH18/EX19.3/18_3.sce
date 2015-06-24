clc
//initialisation of variables
p= 19.2 //per cent
b= 1 //cm
c= 5*10^-4 //mole l^-1
m= 1.75*10^-4 //M
//CALCULATIONS
As= log10(100/p)
am= As/(b*c)
r= 100/10^(am*m)
//RESULTS
printf (' perentage trnasmmitancy= %.1f per cent',r)
