clc
//initialisation of variables
x1= 3 //in
x2= 3 //in
x3= 3 //in
x4= 3 //in
x5= 5 //in
x6= 5 //in
x7= 5 //in
x8= 5 //in
L1= 1 //in
L2= 1 //in
L3= 1 //in
L4= 1 //in
L5= 1 //in
L6= 1 //in
L7= 1 //in
L8= 1 //in
y= 7.5 //in
//CALCULATIONS
Ix1= x1*L1*(y)^2
Ix2= x2*L2*(y-L2)^2
Ix3= x3*L3*(y-L3-L2)^2
Ix4= x4*L4*(y-L4-L3-L2)^2
Ix5= x5*L5*(y-L5-L4-L3-L2)^2
Ix6= x6*L6*(y-L6-L5-L4-L3-L2)^2
Ix7= x7*L7*(y-L7-L6-L5-L4-L3-L2)^2 
Ix8= x8*L8*(y-L8-L7-L6-L5-L4-L3-L2)^2
Ix= Ix1+Ix2+Ix3+Ix4+Ix5+Ix6+Ix7+Ix8
//RESULTS
printf ('Ix= %.f in^4',Ix)
