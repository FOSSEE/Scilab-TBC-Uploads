//Exa 16.3
clc;
clear;
close;
//given data :
disp("Given the following LP model :")
disp("maximize Z = 6*X1 + 8*X2");
disp("subject to");
disp("5*X1+10*X2 <= 60");
disp("4*X1+4*X2 <= 40");
disp("X1,X2 >= 0");
disp("The introduction of non-negative constraints X1>=0 and X2>=0 will eliminate the 2nd, 3rd and 4th quadrants of XY plane.");
disp("Compute the cordinates to plot equations relting to the constraints on the XY plane as shown below : ");
disp("5*X1+10*X2 <= 60");
disp("When X1=0 : X2=6");
disp("When X2=0 : X1=12");
X1=0:12;
X2=(60-5*X1)/10;
plot2d(X1,X2);
disp("Consider the 2nd constraint in the form :");
disp("4*X1+4*X2 <= 40");
disp("When X1=0 : X2=10");
disp("When X2=0 : X1=10");
X1=0:10;
X2=(40-4*X1)/4;
plot2d(X1,X2);
disp("The closed polygon is the feasible region at each of the corner points of the closed polygon is computed as follows by substituting its coordinates in the objective function :");
ZA=6*0+8*0;
ZB=6*10+8*0;
ZC=6*8+8*2;
ZD=6*0+8*6;
disp("ZA=6*0+8*0=0...
   ZB=6*10+8*0=60...
   ZC=6*8+8*2=64...
   ZD=6*0+8*6=48");
disp("Since the type of the objective function is maximization, the solution corresponding to the maximum Z value should be selected as the optimum solution. The Z value is maximum for the corner point C. Hence, the corresponding solution is ");
disp("X1 = 8  X2 = 2 and Z(Optimum) = 64");
