// Example 5.5 page no-287
clear
clc
b=50 //Beta
vcc=10 //V
rc= 250 //ohm
ib=0.4 //mA
ic=21 //mA
vce=vcc-((ic+ib)*rc/1000)
vce=floor(vce*10)/10//aproximated to
printf("\nVce = %.1fV",vce)
vbe=0.6
rb=(vce-vbe)/ib
s=(b+1)/(1+(b*rc/(rc+rb*1000)))
printf("\nRb  = %.0f K-Ohm\nS   = %d",rb,ceil(s))
