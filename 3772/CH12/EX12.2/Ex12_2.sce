// Problem no 12.2,Page No.286

clc;clear;
close;

L=10 //m //Length
b=15 //cm //Width
d=40 //cm //Depth
y_c=1.5*10**-2 //m //Deflection
E=120*10**9 
y=0.2
sigma=10*10**6 //Bending stress

//Calculations

I=b*d**3*12**-1*10**-8 //cm  //M.I

//From Deflection at the centre of cantilever we get
w=y_c*192*E*I*(L**4)**-1*10**-3 //udl distributed over the cantilever

//From Bending Moment Equation we get
w_2=sigma*I*y**-1*16*(L**2)**-1*10**-3    //udl distributed over the cantilever

//Result
printf("The safe uniformly Distributed Load is %.2f",w_2);printf(" KN/m")
