//Clearing console
clc
clear

x = poly(0,"x")
y = poly(0,"y")

//Intializing Variables
r = 1
s = 0.5

//Node 2: (3*m + b=1)
//Node 3: (2.5*m + b=2)
//constructing matrices for solving b and m
k = [3 1;2.5 1]
f = [1;2]

//Solving for b and m
u(1:2,1)=linsolve(k,-f)

//Calculating x and y for (r, s) = (1, 0.5)
X =  (1 - r )*(1 - s)/4 + (1 + r )*(1 - s)*(3)/4 + (1 + r )*(1 + s)*(2.5)/4 + (1 - r )*(1 + s)*(1.25)/4
Y =(1 - r )*(1 - s)/4 + (1 + r )*(1 - s)/4 + (1 + r )*(1 + s)*(2)/4 + (1 - r )*(1 + s)*(1.75)/4



//Printing Results
printf('\nResults\n')
printf('\nelement edge 2-3 is described by y=')
disp(u(1,1)*x + u(2,1))
printf('\nFor (r, s) = (1, 0.5) , we obtain')
printf('\n x=%f y=%f',X,Y)
