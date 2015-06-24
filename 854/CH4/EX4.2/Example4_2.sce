//clear//
//Caption: Program to find the work involved 'W' in moving a charge 'Q' along straight line
//Example4.2
//page 84
clc;
x = sym('x');
y = sym('y');
z = sym('z');
y1 = sym('y1');
y = -3*(x-1);
Q = 2; //charge in coulombs
Edot_dL1 = integ(y,x);
disp(Edot_dL1,'E.dx*ax =')
Edot_dL1 = limit(Edot_dL1,x,0.8)-limit(Edot_dL1,x,1);
disp(Edot_dL1,'Value of E.dx*ax =')
Edot_dL2 = 0;
disp(Edot_dL2,'Value of E.dz*az=')
x = (1-y1/3);
Edot_dL3 = integ(x,y1)
disp(Edot_dL3,'E.dy*ay=')
Edot_dL3 = limit(Edot_dL3,y1,0.6)-limit(Edot_dL3,y1,0);
disp(Edot_dL3,'Value of E.dy*ay =')
W = -Q*(Edot_dL1+Edot_dL2+Edot_dL3);
disp(W,'Work done in moving a point charge along shorter arc of circle in Joules, W=')
//Result
//E.dx*ax = -3*(x^2/2-x)   
//Value of E.dx*ax = -3/50   
//Value of E.dz*az =   0.  
//E.dy*ay =  y1-y1^2/6   
//Value of E.dy*ay =   27/50   
//Work done in moving a point charge along shorter arc of circle in Joules, W = -24/25  = -0.96 Joules
