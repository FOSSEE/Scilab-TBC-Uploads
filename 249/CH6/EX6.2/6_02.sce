clear
clc
//For single reactor and 90% Conversion 
//From fig 6.6
kCot=90;
//For 2 reactor space time is doubled and from fig
kCot=180;
//From graph X=97.4%
X=97.4;
printf("\n Part a")
printf("\n The conversion in percentage is %f \n",X)
//For 90% Conversion & N=2.from graph
kCot=27.5;
//Comparing the reaction rate group for N=1 and N=2,We get
//(V2/v2)/(V1/v1)=27.5/90
//V2=2V1
//Ratio of flow rates
ratio=90*2/27.5;
printf("\n Part b")
printf("\n Treatment rate can be increased by  %f \n",ratio)
