//Page Number: 11.17
//Example 11.9
clc;
//Given
p=0.2;
Px1=0.5;
Px2=0.5;
//P(X) Matrix
PX=[Px1 Px2];
//Given
PYbyX=[(1-p) p 0;0 p (1-p)];
//P(y)=
PY=PX*PYbyX;
disp(PY,'P(y1) P(y2) P(y3):');
