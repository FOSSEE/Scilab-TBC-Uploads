clc
//initialisation of variables
veff=0.8 //efficiency
rp=7 
n=1.2 //constant value
pi=(22/7)
//CALCULATIONS
c=(veff-1)/(1-(rp)^(1/n))
vs=2/c
d=((4*vs)/pi)^(1/3)
//RESULTS
printf('stroke volume is %2fm*m*m',vs)
printf('\nlenght of stroke is %2fm',d)
