//Chapter-9,Example9_23,pg 9_76
V=200
Ia1=30
Ra=0.75
Rse=0.75
R=Ra+Rse
Eb1=V-Ia1*R
//N2=0.6*N1
N=0.6//N=N2/N1
//using T=k*Ia^2 and T=k*N^3
Ia2=sqrt(((0.6^3)*30^2))
//using speed equation N=k*Eb/Ia
Eb2=N*Eb1*Ia2/Ia1
//Eb2=V-Ia2*(R+Rx)
Rx=-(Eb2-V+Ia2*R)/Ia2
printf("extra resistance to reduce speed\n")
printf("Rx=%.3f ohm",Rx)
