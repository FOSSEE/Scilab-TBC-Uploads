clc
Z=4 //impedance of loudspeaker in ohms
Zin=500 //impedance of audio line in ohms
a=sqrt(Zin/Z)//ans may vary due to roundoff error
mprintf("a=sqrt(Zin/Z)=%f\n",a)//ans may vary due to roundoff error
P2=10 //audio power in watts
V2=sqrt(40)//ans may vary due to roundoff error
mprintf("V2=4*P2=%fV\n",V2) //ans may vary due to roundoff error
V1=a*V2
mprintf("V1=aV2=%fV\n",V1)



