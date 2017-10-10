clc;
F1=725;// N 
F2=500;// N
F3=780;//N
theta=acos(840/1160);//radian, Angle made by F1 with -X axis
alpha=acos(3/5);//radian, Angle made by F2 with -X axis
beta=acos(12/13);//radian, Angle made by F3 with X axis

F1x=-F1*cos(theta);//N, Horizontal component of F1
F2x=-F2*cos(alpha);//N, Horizontal component of F2
F3x=F3*cos(beta);//N, Horizontal component of F3

F1y=F1*sin(theta);//N,  Vertical component of F1
F2y=-F2*sin(alpha);//N,  Vertical component of F2
F3y=-F3*sin(beta);//N,  Vertical component of F3

Rx=F1x+F2x+F3x;//N Horizontal component of R- resultant
Ry=F1y+F2y+F3y;//N Vertical component of R- resultant

//R=Rx i +Ry j

printf("R= %.2f i + %.2f j \n", Rx,Ry);

alpha=atan(Ry/Rx);//Radian, Angle made by resultant with +ve x axis
alpha=alpha*180/%pi;//Conversion into degrees

R=sqrt(Rx^2+Ry^2);// N , Magnitude of resultant
printf("alpha= %.2f degrees and R= %.2f N",alpha,R);
