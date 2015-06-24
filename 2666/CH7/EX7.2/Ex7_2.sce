
clc
//initialisation of variables
p=26//lb
h3=1187.0//in
h1=180.0//in
w=2544//in
g=13.9//percent
h=140.2//Btu
//CALCULATIONS
E=w/(p*(h3-h1))*100//percent
R=E/g//R C R
RC=w/(p*h)//R C R 
F=w/h//lb per hp hr
//RESULTS
printf('The tsteam prime mover operating under condition for Ranking Cycle=% f lb per hp hr',F)
