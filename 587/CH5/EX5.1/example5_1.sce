clear;
clc;

//Example5.1[Steady Heat Conduction in a Large Uranium Plate]
//Given:-
L=0.04;//Thickness of plate[m]
k=28;//Thermal conductivity[W/m.degree Celcius]
e_gen=5*(10^6);//Rate of heat generation per unit volume[W/m^3]
h=45;//Heat transfer coefficient[W/m^2]
T_ambient=30;//Ambient temperature[degree Celcius]
//Solutio:-
M=3;//No of nodes
//These nodes are chosen to be at the two surfaces of the plate and the mid point
del_x=L/(M-1);//Nodal Spacing[m]
//Let the nodes be 0,1 and 2. and temperatures at these nodes are
T0=0;//Temperature at node 0[degree Celcius]
//Finding temperatures at other two nodes using finite difference method
c1=e_gen*(del_x^2)/k;
c2=(-h*del_x*T_ambient/k)-(c1/2);
function[temp]=f1(T)
temp(1)=2*T(1)-T(2)-c1;
temp(2)=T(1)-1.032*T(2)-c2;
deff('[temp]=f1(T)',['temp_1=2*T(1)-T(2)-c1','temp_2=T(1)-1.032*T(2)-c2'])
//To find the solution assume an initial value x0=[a,b]
//then equate [xs,fxs,m]=fsolve(x0',f1)
 