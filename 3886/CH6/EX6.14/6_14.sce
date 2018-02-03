//Force required at the end of lever
d=40  //mm
p=20/3  //mm
W=40000  //N
R=400  //mm
mu=0.12
theta=atand(p/(%pi*d))  //degree
P=(d*W*(mu+tand(theta)))/(2*R*(1-mu*tand(theta)))  //N
printf("Force required at the end of lever P=%0.2f N",P)
