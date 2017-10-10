clc
CO2=52.32 
H2O=38.49
C5H12=247
O2=33.62
e=5 //moles of CO2
g=6 //moles of H2O
h=8 //moles of O2
deltaCp=(e*CO2)+(g*H2O)-C5H12-(h*O2)
mprintf("deltaCp=%f\n",deltaCp)//ans vary due to roundoff error
deltaH298=-3274.5
t1=298
t2=800
deltaH800=deltaH298+(deltaCp*(10^-3)*(t2-t1))
mprintf("deltaH800=%fkJ",deltaH800)//ans vary due to roundoff error

