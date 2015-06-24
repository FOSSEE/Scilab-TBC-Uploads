
//dtermine its speed when its take crnt 25 amps
Vl=250
Ra=0.05
R=0.02
Ia=30
I1=30 //Il=Ia
N1=400
E1=Vl-(Ia*Ra)-(Ia*R) 
//E1=E2
I2=25
N2=(N1*E1*I1)/(E1*I2)
disp('speed of motor='+string(N2)+'rpm')
