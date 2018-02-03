//Ball dropped from height
//refer fig. 18.11
g=9.81  //m/sec^2
h0=1.2  //m
uy=sqrt(2*g*h0)  //downward
h1=1  //m
v1y=sqrt(2*9.81*h1)  //upwards
e=sqrt(1/1.2)  
//Time of flight
t1=(2*sqrt(2*9.81*1))/(9.81)  //sec
ux=0.4/0.903  //m/sec
//Vertical component of velocity after second bounce
v2y=0.903*sqrt(2*9.81*1)  //m/sec
h2=((v2y)^2)/(2*9.81)  //m
t2=(2*4)/(9.81)  //sec
//Horizontal range
D2=0.443*0.815  //m
printf("\ne=%.3f \nh2=%.3f m \nD2=%.3f m ",e,h2,D2)
