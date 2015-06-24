
clc
//initialisation of variables
p=100-5//percent
w=80//tons
//CALCULATIONS
heat=(w*2240*p*4)/(%pi*100*62.4)
wp=62.4*60*heat
wa=w*2240*p*10/100
hp=(wp+wa)/33000
//RESULTS
printf ('\n horse power delivered= %.f ',hp)
