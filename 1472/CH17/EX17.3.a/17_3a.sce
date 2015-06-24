clc
//initialization of varaibles
w=1 //lb/sec
Pratio=0.53
k=1.4
T0=800 //R
cp=0.24
P0=150 //psia
P2=15 //psia
//calculations
Pt=Pratio*P0
Tratio=(Pratio)^((k-1)/k)
Tts=T0*Tratio
Vts=sqrt(2*32.2*778*cp*(T0-Tts))
vts=53.34*Tts/(Pt*144)
at=w*vts/(Vts)
T2s=T0*(Pt/P0)^((k-1)/k)
T2=460 //R
V2=sqrt(2*32.2*cp*778*(T0-T2))
v2=53.34*T2/(144*P2)
a2=w*v2/V2
//results
printf("Exit velocity = %d fps",Vts)
printf("\n Throat area = %.5f ft^2",at)
printf("\n Exit area = %.5f ft^2",a2)
