//Exa 16.4
clc;
clear;
close;
//given data :
disp("Given the following LP model :")
disp("minimize Z = 2*X1 + 3*X2");
disp("subject to");
disp("X1+X2 &gt;= 6");
disp("7*X1+X2 &gt;= 14");
disp("X1,X2 &gt;= 0");
disp("The introduction of non-negative constraints X1&gt;=0 and X2&gt;=0 will eliminate the 2nd, 3rd and 4th quadrants of XY plane.");
disp("Compute the cordinates to plot equations relating to the constraints on the XY plane as shown below : ");
disp("X1+X2 = 6");
disp("When X1=0 : X2=6");
disp("When X2=0 : X1=6");
X1=0:6;
X2=(6-X1);
plot2d(X1,X2);
disp("Consider the 2nd constraint in the form :");
disp("7*X1+X2 = 14");
disp("When X1=0 : X2=14");
disp("When X2=0 : X1=2");
X1=0:2;
X2=(14-7*X1);
plot2d(X1,X2);
disp("The Optimum solution will be in any one of the corners A, B and C");
disp("The objective function value at each of these corner points of the feasible solution space is computed as follows by substituting its coordinates in the objective function.")
ZA=2*0+3*14;
ZB=2*(4/3)+3*(14/3);
ZC=2*6+3*0;
disp("ZA=6*0+8*0=0...
   ZB=6*10+8*0=60...
   ZC=6*8+8*2=64");
disp("Since the type of the objective function is minimization, the solution corresponding to the minimum Z value should be selected as the optimum solution. The Z value is minimum for the corner point C. Hence, the corresponding solution is ");
disp("X1 = 6  X2 = 0 and Z(Optimum) = 12");