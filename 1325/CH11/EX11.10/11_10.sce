//To find the ratio of engine speed to propeller shaft speed and the tooth loads for the third gear
clc
//given
s1=26
s2=24
s3=23
sr=31
i1=70
i2=72
i3=61
ir=71
t=1500//lb in 
k1=-i3/s3//Ns3-Ni2/(Ni3-Ni2)=k
//S3 is fixed thus 
k2=1-(1/k1)//k2=Ni3/Ni2
k3=-i2/s2//k3=Ns2-Ni3/(Ni2-Ni3)
k4=(1/k2-1)*k3+1//k4=Ns2/Ni3  ; reducing using k2 and k3
k5=-i1/s1//Ns1-Nf/(Ni1-Nf)
k6=(1-k5)/(1-k5/k4)//k6=Ns1/Nf
printf("\n Ns1/Nf = %.2f",k6)
