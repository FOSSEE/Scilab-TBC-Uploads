clc
//initialization of varaibles
k=1.3
P=250 //psia
h0=1263.4 //B/lb
w=10000
cv=0.949
vts=3.415 //cu ft/lb
//calculations
Pratio=(2/(k+1))^(k/(k-1))
Pt=Pratio*P
hts=1208.2 //B/lb
h2s=891 //B/lb
Vts=sqrt(2*32.2*778*(h0-hts))
w=w/3600 //lb/sec
at=w*vts/(Vts)
V2=cv*sqrt(2*32.2*778*(h0-h2s))
etan=cv^2
h2=928 //B/lb
disp("From table 3,")
v2=276 //cu ft/lb
a2=w*v2/V2
a2s=0.17 //ft^2
Cw=0.98
at2=at/Cw
//results
printf("\n Throat area = %.5f ft^2",at)
printf("\n Exit area = %.3f ft^2",a2)
printf("\n For frictionless nozzle = %.3f ft^2",a2s)
printf("\n Changed throat area = %.5f ft^2 and exit area is unchanged",at2)
