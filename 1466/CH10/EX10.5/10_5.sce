
clc
//initialisation of variables
p=80//percent
ra=36.6//in
area=1680//acres
r=1/3
re=15//in
h=48//gallons per head
V= 1098435 //gal
//CALCULATOINS
mir=ra*p/100
cr=mir-re
vol=area*4840*9*cr/12
volg=(vol/0.161)+V
vola=volg*(1-r)
pop=vola/(h*365)
//RESULTS
printf (' Volume of rain collected per annum= %.f gal',volg)
printf (' \n population supplied= %.f',pop-24)
