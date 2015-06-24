//Initlization of  variables
F1=2000 //lb
w=100 //lb/ft
//Calculations
R_r=(-F1*5+w*14*13)/20 //lb
R_l=(F1*25+w*14*7)/20 //lb
//Shear Force matrix
V=[-2000,-2000,990,990,-410,0] //lb
//Bending Moment matrix
B=[0,-10000,-4060,840,0]
//Length matrix for shear force
X_v=[0,5,5.0001,11,20.89999,20.9]
//Length matrix for bendimg moment
X_b=[0,5,11,19.9,20.9]
//Plotting
subplot(221)
plot(X_v,V,X_v,0)
xlabel("Shear Force Diagram","Span","Shear Force")
subplot(222)
plot(X_b,B,X_b,0)
xlabel("Bending Moment Diagram","Span","Bending Moment")
//Result
clc
printf('The bending Moment and Shear Force diagrams have been plotted\n')
//Note
//The textbook does not specify the span and hence there seems to be a disagreement between the textbook and scilab solution.here the values have just been plotted



