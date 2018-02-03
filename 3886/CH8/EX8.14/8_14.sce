//Determine WB 
//refer fig.8.18
theta=atand(3/4)
mu=0.3
WA=200
F=mu*WA*cosd(theta)  //N
//Let us give virtual displacement of delta(s) up the plane to block A
//Applying virtual work principle
//(-200*sind(theta)-F+WB/2)*delta(s)=0
WB=2*(200*sind(theta)+F)  //N
printf("Required value of WB=%.2f N",WB)

