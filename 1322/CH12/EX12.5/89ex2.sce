
//Given : vitamin A-8units ,B-6units, C- 3units and the cost of making composite feed is 120*x+90*y (costs of each feed per kg.are 120p &90p)
clc;
clear;
clf();
v=[1 3 1;4 1 1];//rows-feed 1,feed 2  and columns-vitamins A,B,C. vitamin content of each feed per kilogram
// A:x+4*y>=8;  B:3*x+y>=6;  C:x+y>=3. min_cost=120*x+90*y
x=linspace(0,10,10);
y=6-3*x;plot2d(x,y,3);
y=(8-x)/4;plot2d(x,y,6);
y=3-x;plot2d(x,y,5);
//the 2 cost lines for 360p and 720p are shown in the graph as dotted lines
// assume 2 parallel lines 120*x+90*y=360 , 120*x+90*y=720 
y=(360-120*x)/90;plot(x,y,'b--.x');
y=(720-120*x)/90;plot(x,y,'b--.o');
//lines move down to left as cost decreases.min cost occurs at last line that contains atleast 1 point in the required region 
x=1;y=3;
min_cost=120*x+90*y;
mprintf("\n minimum cost %i occurs at (%i,%i)",min_cost,x,y);
xtitle("Feed1 vs. Feed 2","Feed 1","Feed 2");
legend("3*x+y>=6","x+4*y>=8","x+y>=3","120*x+90*y=360","120*x+90*y=720");
xgrid;






