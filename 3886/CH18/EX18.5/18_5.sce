//Ball in frictionless tube
//refer fif. 18.4
u1=sqrt(2*9.81*2)  //m/sec
u2=0
//By principle of conservation of momentum
//v1+2*v2=6.264
//From defination of coefficient of restitution
//case(1)-e=1
//v2-v1=6.264
//solving
v2=4.176  //m/sec
v1=6.264-(2*4.176)  //m/sec
//Let h be the height to which hanging ball will rise
//Change in K.E=Work Done
h=(v2^2)/(2*9.81)  //m
//case(2)- e=0.7
//v2-v1=4.385
//solving
bv2=(6.264+4.385)/(3)  //m/sec
//Height to which ball will rise
h2=(bv2^2)/(2*9.81)  //m
printf("\nCase(1)-\nh=%.4f m\nCase(2)-\nh2=%.4f m ",h,h2)
