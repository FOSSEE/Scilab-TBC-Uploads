//Page Number: 11.16
//Example 11.8
clc;
//(a) Channel Matrix
//Given
PYbyX=[0.9 0.1;0.2 0.8];
PZbyY=[0.9 0.1;0.2 0.8];

//As P(Z/X)=P(Y/X)*P(Z/Y)
PZbyX=PYbyX*PZbyY;
disp(PZbyX,'Channel Matrix');

//(b)Pz1 and Pz2
//Given
Px1=0.5;
Px2=Px1;
//As P(Z)=P(X)*P(Z/X)

//P(X) matrix
PX=[Px1 Px2];
PZ=PX*PZbyX;
disp(PZ,'P(z1) P(z2):');
