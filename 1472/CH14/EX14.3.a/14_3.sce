clc
//initialization of varaibles
P1=200 //psia
P2=1 //psia
e=0.7
//calculations
h1=1198.4
h2s=863.5
h3r=69.7
h4r=70.3
h3c=300.7
h4c=355.4
disp("For Rankine cycle, ")
Wtr=h1-h2s
Q1r=h1-h4r
Wpr=h4r-h3r
Wnetr=Wtr-Wpr
eta1=(Wtr-Wpr)/Q1r
wr=2545/Wtr
printf("Back work = %.1f B/lb",Wnetr)
printf("\n Efficiency = %.3f ",eta1)
printf("\n Steam rate = %.1f lb/hp hr",wr)
disp("For carnot cycle,")
Wtc=h1-h2s
Q1c=h1-h4c
Wpc=h4c-h3c
Wnetc=Wtc-Wpc
eta2=(Wtc-Wpc)/Q1c
wc=9.1
printf("Back work = %.1f B/lb",Wnetc)
printf("\n Efficiency = %.3f ",eta2)
printf("\n Steam rate = %.1f lb/hp hr",wc)
