clc

// Given data:

Hcoal=20.0 // heating value of coal in MJ
W=200.0e3 // weight of coal in kg
E=1.2e6 // Electrical energy generated in MJ
delH=1.6e6 // Heat energy generated in MJ
ne=0.30 // electrical efficiency
nb=0.8 // thermal efficiency

QA=Hcoal*W // total thermal energy input to plant in MJ
nco=(E+delH)/QA // efficiency of cogeneration plant
e=E/(E+delH) // electrical fraction

nc=1/((e/ne)+(1-e)/nb) // overall efficiency

printf("The overall efficiency is %0.2f %%",nc*100)
