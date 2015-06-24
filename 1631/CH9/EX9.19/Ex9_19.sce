//Caption: Channel Matrix,joint probability
//Example 9.19
//page no 408
//Find Channel Matrix,joint probability
 
clc;
clear;
px1=0.5;
px2=0.5;
py1x1=0.9;
py2x1=0.1;
py1x2=0.2;
py2x2=0.8;
PYX=[py1x1 py2x1; py1x2 py2x2];
PX=[px1 px2];

disp(PYX,"   i)Channel Matrix  [P(Y/X)]=");
PY=PX*PYX;
printf("\n\  ii) P(y1)=%.2f and P(y2)=%.2f \n",PY(1),PY(2));

PXd=[px1 0;0 px2];
PXY=PXd*PYX;
printf("\n iii)P(x1y2)=%.2f and P(x2y1)=%.2f",PXY(3),PXY(2));

