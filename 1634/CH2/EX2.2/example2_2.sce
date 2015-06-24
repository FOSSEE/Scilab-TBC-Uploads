

//exapple 2.2 
clc; funcprot(0);
// Initialization of Variable
pi=3.14259;
f=150;//focal length of camera
ap=20.2//elevation of a from p
aa1=16.4;//ditance to the right
aq=35.2//elevation of a from q
PQ=100;//distance of PQ
RL=126.845;//reduced level of instrument
alphap=atan(ap/f);
alphaq=atan(aq/f);
P=pi/3-alphap;//angle P
Q=40*pi/180-alphaq;//angle Q
A=pi-P-Q;//angle A;
AP=PQ*sin(Q)/sin(A);
disp(AP,"distance of AP in (m):");
AQ=PQ*sin(P)/sin(A);
disp(AQ,"distance of AQ in (m):");
Pa1=sqrt(ap^2+f^2);
AA1=aa1*AP/Pa1;
RLa=RL+AA1;//reduced level of A
disp(RLa,"reduced level of A in (M)")

