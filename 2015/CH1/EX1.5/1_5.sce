clc
//initialisation of variables
r=14
g=1.4
x=1.78 //x=v3/v2
//CALCULATIONS
oef=1-(1/14)^(g-1)
def=1-((1/(14)^(g)*1.4))*((x^(g) -1)/(x-1))
printf('otto efficiency is %2f',oef)
