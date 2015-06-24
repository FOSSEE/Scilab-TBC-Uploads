clc;
//page 31
F1=150;// N 
F2=80;// N
F3=110;//N
F4=100// in N

F1x=129//in N
F2x=-27.4
F3x=0
F4x=96.6
F1y=75
F2y=75.2
F3y=-110
F4y=-25.9

Rx=F1x+F2x+F3x+F4x;//N Horizontal component of R- resultant
Ry=F1y+F2y+F3y+F4y;//N Vertical component of R- resultant

//R=Rx i +Ry j

printf("R= %.2f i + %.2f j \n", Rx,Ry);

alpha=atan(Ry/Rx);//Radian, Angle made by resultant with +ve x axis
alpha=alpha*180/%pi;//Conversion into degrees

R=sqrt(Rx^2+Ry^2);// N , Magnitude of resultant
printf("alpha= %.2f degrees and R= %.2f N",alpha,R);
