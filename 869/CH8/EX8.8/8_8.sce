clc
//initialisation of variables
d= 16 //ft
h= 24 //ft
P= 160 //lb/cu ft
hs1= 8 //ft
hs2= 8 //ft
hs3= 8 //ft
Tsmax= 5000 //psi
//CALCULATIONS
SW= P/1728
P8= SW*hs1*12
P16= SW*(hs1+hs2)*12
P24= SW*(hs1+hs2+hs3)*12
t8= (P8*d*12)/(2*Tsmax)
t16= P16*d*12/(2*Tsmax)
t24= P24*d*12/(2*Tsmax)
//RESULTS
printf ('t8= %.2f in',t8)
printf (' \n t16=%.2f in',t16)
printf (' \n t24=%.2f in',t24)
