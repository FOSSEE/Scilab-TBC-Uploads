// Ex 40 Page 384

clc;clear;close;
// Given
KVA=4;//kVA
V1=200//V
V2=400//V
f=50;//Hz
Io1=0.8;//A
P1=70;//W
Vs2=17.5;//V
Is2=9;//A
P2=50;//W

//full load
I_loss=P1;//W
I2=KVA*1000/V2;//A
Cu_loss=(I2/Is2)**2*P2;//W
Zo2=Vs2/Is2;//ohm
Ro2=P2/Is2**2;//ohm
Xo2=sqrt(Zo2**2-Ro2**2);//ohm

//(a) 
printf("Full load efficiency : ")
//unity pf
pf=1;//power factor
Output=KVA*pf;//kW
Losses=Cu_loss+I_loss;//W
eta=Output*1000/(Output*1000+Losses)*100;//%
printf("\n at unity power factor = %.1f percent",eta)
//0.8 pf
pf=0.8;//power factor
Output=KVA*pf;//kW
eta=Output*1000/(Output*1000+Losses)*100;//%
printf("\n at 0.8 power factor = %.1f percent",eta)

//(b)
//(i) unity pf
Vd=I2*Ro2;//V
V22=V2-Vd;//V
printf("\n\n Voltage drop at unity pf = %.1f V",V22)
//(i) 0.8 pf lagging
pf=0.8;//power factor
Vd=I2*(Ro2*pf+Xo2*sqrt(1-pf**2));//V
V22=V2-Vd;//V
printf("\n Voltage drop at 0.8 pf lagging = %.1f V",V22)
//(i) 0.8 pf leading
pf=0.8;//power factor
Vd=I2*(Ro2*pf-Xo2*sqrt(1-pf**2));//V
V22=V2-Vd;//V
printf("\n Voltage drop at 0.8 pf leading = %.f V",V22)
