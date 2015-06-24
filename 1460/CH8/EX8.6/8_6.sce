clc
//initialization of variables
g=1.4
Tt4=2060 //R
cp=0.24
//calculations
Tt5=Tt4/1.67
Tt2=868 //R
Tt3s=1234
dTt3=(Tt3s-Tt2)/2
Tt3=Tt2+dTt3
Q=cp*(Tt4-Tt3)
eta=286*0.401/Q
//results
printf("Improvement is around 6.2 percent in overall efficiency")
