//Caption: probabilities channel matrix
//Example 9.21
//Find probabilities channel matrix
 
clc;
clear;
p=0.2;
PX=[0.5 0.5];
PXY=[1-p p 0;0 p 1-p];
//P(Y)=[P(X)]*[P(Y|X)]
PY=PX*PXY
disp(PY,"[P(Y)]");
disp(PY(1),"P(y1)=");
disp(PY(2),"P(y2)=");
disp(PY(3),"P(y3)=");
