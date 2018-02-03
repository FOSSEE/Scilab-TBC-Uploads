//Two identical balls 
//refer fig. 18.5 and 18.6 (a) and (b)
//Before impact
uAY=4.5  //m/sec
uAX=7.794  //m/sec
uBY=10.392  //m/sec
uBX=-6  //m/sec
vAY=uAY  //m/sec
vBY=uBY  //m/sec
//Applying principle of conservation of momentum
//vAX+vBX=1.794
//From defination of coefficient of restitution
//vBX-vAX=12.415
//Solving
vBX=(12.415+1.794)/(2)  //m/sec
vAX=1.794-7.104  //m/sec
vA=sqrt((5.31^2)+(4.5^2))  //m/sec
thetaA=atand(4.5/5.31)  //degree
vB=sqrt((7.104^2)+(10.392^2))  //m/sec
thetaB=atand(10.392/7.104)  //degree
printf("\nvA=%.3f m/sec\nthetaA=%.3f degree\nvB=%.3f m/sec\nthetaB=%.3f degree",vA,thetaA,vB,thetaB)
