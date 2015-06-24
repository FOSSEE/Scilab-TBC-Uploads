clc;
//Drawing of shear and bending moment diagram
//Values taken in N and m instead of lb and in
printf("Given problem is for drawing diagram, this diagram is drawn by step by step manner.\n ");
F_AC=40;//lb/in, distributed load applied at A to C
F_E=400;//lb, force applied at E
AC=12;//in, perpendicular distance between A and B
CD=6;//in, perpendicular distance between C and D
DE=04;//in, perpendicular distance between E and D
EB=10;//in, perpendicular distance between E and B
AB=32;//in, length of beam AB
F=F_AC*AC;//N, Force due to districuted load at AC/2
//By free body of entire beam
//By sum(m_A)=0
By=(F*(AC/2)+F_E*(AC+CD+DE))/AB;//N,Y componet of Reaction at B
//By sum(m_B)=0
//disp(By)
A=(F*(AB-AC/2)+F_E*EB)/AB;//N, Reaction at A
//by sum(Fx)=0
//disp(A)
Bx=0;//N, xcomponent of rection at B





//Diagrams

//For section A to C

//Applying sum(Fy)=0

i=0;

for x=0:2:12

    i=i+1;

    X(i)=x;

V(i)=A-F*x;//N

//Applying sum(M1)=0

M(i)=A*x-F/2*x^2;//N.m

end



//For section Cto D

//Applying sum(Fy)=0

for x=12:2:18
    i=i+1;

    X(i)=x;

V(i)=A-F;//N

//Applying sum(M1)=0

M(i)=A*x-F*(x-0.15);//N.m

end

//For section D to B



for x=18:2:32



i=i+1;

    X(i)=x;

    //Applying sum(Fy)=0

    V(i)=A-F-F_E;//N

//Applying sum(M1)=0

M(i)=A*x-F*(x-0.15)+F_E*DE-F_E*(x-0.045);//N.m

end

xtitle( 'Shear and bending moment diagram', 'X axis', 'Y axis') ;
plot(X,V,'r');//Shear diagram
plot(X,M,'-');//Bending moment diagram































