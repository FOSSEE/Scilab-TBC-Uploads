//Chapter 21, Problem 27
clc;
v1=200;                         //primary voltage of transformer 1
v2=150;                         //secondary voltage of transformer 1
v3=500;                         //primary voltage of transformer 2
v4=100;                         //secondary voltage of transformer 2
x=v2/v1;
V=(1-x)*100;
y=v4/v3;
W=(1-y)*100;
printf("(a) 200V:150V transformer,\n Volume of copper = %d percent\n",V);
disp("Hence the saving is 75%");
printf("\n\n(b) 500V:100V transformer,\nVolume of copper = %d percent\n",W);
disp("Hence the saving is 20%.");
