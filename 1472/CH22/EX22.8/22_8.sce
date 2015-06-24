clc
//initialization of varaibles
dH2=14087 //B/lb
xc=3.67 //lb
xN=8.78 //lb
tb=100 //F
//calculations
dt2=dH2/(xc*0.196 + xN*0.248)
t2=dt2+tb
//results
printf("products temperature = %d F",t2)
