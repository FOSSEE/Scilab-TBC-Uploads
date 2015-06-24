//Caption: Information Content
//Example 9.1
//page no 394
//Find Information Content of Each Symbol
clc;
clear;
px1=1/2;
px2=1/4;
px3=1/8;
px4=1/8;
//information content of each symbol
Ix1=log2(1/px1);
Ix2=log2(1/px2);
Ix3=log2(1/px3);
Ix4=log2(1/px4);
printf("Information Content \n\n \tI(x1) =  %d bit \n",Ix1);
printf(" \tI(x2) =  %d bits\n",Ix2);
printf(" \tI(x3) =  %d bits\n",Ix3);
printf(" \tI(x4) =  %d bits\n",Ix4);


