clc
//initialisation of variables
k=1.4
ptbyp0=0.53
T0=800 //R
cp=778 
R=0.0425864
P0=150 //psia
Pt=15 //psia
w=1 //lb/sec
cw=1.0043782
//Calculations
Pt2=ptbyp0*Pt
Tts=T0*(ptbyp0)^((k-1)/k)
Vts=sqrt(2*32.174*cp*0.24*(T0-Tts))
printf ('Exit velocity case 1= %.2f fps',Vts)
vts=3.12 //cu ft/lb
at=w*vts/(cw*Vts)
printf ('\n Throat Area = %.5f ft^2', at)
T2s=T0*(Pt/P0)^((k-1)/k)
eta=0.88
T2=T0-eta*(T0-T2s)
V2=sqrt(2*32.174*cp*0.24*(T0-T2))
printf ('\n Exit velocity = %.2f fps', V2)
v2=11.4 //cu ft/lb
a2=w*v2/V2
printf('\n Exit area = %.5f ft^2',a2)
