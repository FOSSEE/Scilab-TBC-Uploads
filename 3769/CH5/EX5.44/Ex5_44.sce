clear
//Given
R1=6.0                //ohm
R2=3
I=0.8                  //A
a=24

//Calculation
I1=I*(R1+R2)/R1
I11=I1-I
Rp=R1*R2/(R1+R2)
Rt=Rp+8
r=(a/I1)-10
V=I1*Rt

//Result
printf("\n (i) Current in 6 ohm resistance is  %0.3f  A", I11)
printf("\n (ii) Internal resistance of the battery is  %0.3f  ohm", r)
printf("\n (iii) The terminal potential difference of the battery is  %0.3f  V", V)
