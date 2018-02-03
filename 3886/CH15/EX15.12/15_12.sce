//Train along an inclined plane
//refer fig. 15.14 and 15.15
u=0
v=(36*1000)/(60*60)  //m/sec^2
s=1000  //m
//From kinematic equation
a=100/2000 //m/sec^2
//Tractive resistance (Tr)
Tr=5*1500  //N
//Component of weight of train (Wt1)
Wt=1500/100  //kN
//Inertia force (I1)
I=(1500*0.05)/(9.81)  //kN  (Down the plane)
//Dynamic equilibrium equation gives
T=7.5+15+7.645  //kN
//Consider dynamic equilibrium of train
//Total tractive resistance (Rt)
Rt=5*2000  //N
//Inertia force (I2)
I2=(2000*0.05)/(9.81)  //kN  (Down the plane)
//Component of weight down the plane (Wt2)
Wt2=(2000)/(100)  //kN
//Dynamic equilibrium equation gives
P=10+10.194+20  //kN
printf("\nT=%.3f kN\nP=%.3f kN",T,P)

 






