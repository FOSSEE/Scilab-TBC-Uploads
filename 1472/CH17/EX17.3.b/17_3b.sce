clc
//initialization of variables
h0=191.81 //B/lb
Pr0=5.526
w=1 //lb/sec
Pratio=0.53
k=1.4
T0=800 //R
cp=0.24
P0=150 //psia
P2=15 //psia
Pt=79.5;
//calculations
Prt=Pratio*Pr0
disp("From keenan and kaye steam tables,")
Pr=2.929
Tts=668 //R
hts=159.9 //B/lb
Vts=sqrt(2*32.2*778*(h0-hts))
vts=53.34*Tts/(Pt*144)
at=w*vts/(Vts)
Pr2=P2*Pr0/P0
T2s=415 //R
h2s=99.13 //B/lb
h2=110.25 //B/lb
T2=462 //R
V2=sqrt(2*32.2*778*(h0-h2))
v2=53.34*T2/(144*P2)
a2=w*v2/V2
//results
printf("Exit velocity = %d fps",Vts)
printf("\n Throat area = %.5f ft^2",at)
printf("\n Exit area = %.5f ft^2",a2)