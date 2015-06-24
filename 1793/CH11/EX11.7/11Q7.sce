clc
//T50 = Cvtlab /H^2 lab = Cvtfield?H^2 fiels
tl=140
Hf=3
Hd=0.025/2
tf=tl*Hf^2/Hd^2
k=tf/(3600*24)
printf('t field = %f days',k)
