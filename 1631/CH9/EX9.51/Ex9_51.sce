//Caption:  Entropy
//Example 9.51
//Pge no 443
//Calculate H(X) ,H(Y)
clear;
clc;

px1=0.3;
px2=0.4;
px3=0.3;

HX=px1*log2(1/px1)+px2*log2(1/px2)+px3*log2(1/px3);//Entropy of X
printf("\n \t i)Entropy of X \n\n \t  H(X)=%.3f bits/symbol\n",HX);

PYX=[0.8 0.2 0;0 1 0;0 0.3 0.7]
PX=[px1 px2 px3]
PXY=PX*PYX;
py1=PXY(1,1);
py2=PXY(1,2);
py3=PXY(1,3);

HY=py1*log2(1/py1)+py2*log2(1/py2)+py3*log2(1/py3);//Entropy of Y
printf("\n \t ii)Entropy of Y \n\n \t  H(Y)=%.2f bits/symbol\n",HY);

