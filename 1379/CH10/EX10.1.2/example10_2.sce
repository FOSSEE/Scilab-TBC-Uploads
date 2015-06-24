

//example 10.2
clc; funcprot(0);
clf()
//exapple 10.2 
// Initialization of Variable
t=[0 0.5 1 2 3 4 5 6 7 8 9 10];//time
h=[1.10 1.03 .96 .82 .68 .54 .42 .35 .31 .28 .27 .27];
Cl=50:5:100;
U=[19.53 17.71 16.20 14.92 13.82 12.87 12.04 11.31 10.65 9.55];//mass ratio of liquid to solid
v=[0.139 0.115 0.098 0.083 0.071 0.062 0.055 0.049 0.043 0.034];//terminal velocity
//above value taken from graph given with ques.
C=130;//conc. of solids
Q=0.06;//slurry rate
Cmax=130//maximum solid conc.
rhos=2300;//density of solid
rho=998;//density of water
V=rho*(1/C-1/rhos);
F=Q*Cl(1)*3600;
for i=1:10
A(i)=F*(U(i)-V)/rho/v(i);
end
plot(v,A,'r-');
xtitle("","Settling Velocity(m/h)", "Area(m^2)")
//maxima finding using datatraveller in the graph
disp(A,"the area for each settling velocity");
disp("1005 m^2 is the maximum area found out from the plot");
Qu=Q-F/3600/Cmax;
disp(Qu, "Volumetric flow rate of clarified water in (m^3/s):")
 
