//Caption: Entropy
//Example 9.9
//page no 398
//Find Entropy,Amount of information
clc;
clear;
px1=0.4;
px2=0.3;
px3=0.2;
px4=0.1;
HX=-px1*log2(px1)-px2*log2(px2)-px3*log2(px3)-px4*log2(px4);
printf(" \n  Entropy \n \n\t  i) H(X) = %.2f bits/symbol,\n",HX);
Px1x2x1x3=px1*px2*px1*px3;
Ix1x2x1x3=-log2(Px1x2x1x3);

printf(" \n  Amount of information \n \n\t ii) I(x1x2x1x3) = %.2f bits/symbol,\n",Ix1x2x1x3);
Px4x3x3x2=px4*px3*px3*px2;
Ix4x3x3x2=-log2(Px4x3x3x2);

printf(" \n \t \n \t I(x4x3x3x2) = %.2f bits/symbol.\n",Ix4x3x3x2);
