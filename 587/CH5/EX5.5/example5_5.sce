clear;
clc;

//Example5.5[Transient Heat Conduction in a Large Uranium Plate]
//Given:-
k=28;//[W/m.degree Celcius]
a=12.5*10^(-6);//Thermal diffusivity[m^2/s]
T1_0=200,T2_0=200;//Initial Temperature[degree Celcius]
e_gen=5*10^6;//Heat generated per unit volume[W/m^3]
h=45;//heat transfer coefficient[W/m^2.degree Celcius]
T0=0;//Temperature at node 0[degree Celcius]
L=0.04;//[m]
M=3;//No of nodes
t=15;//[seconds]
//Solution (a):-
delx=L/(M-1);//[m]
//The nodes are 0,1 and 2
tau=(a*t)/(delx^2);//Fourier no
//Substituing this value of tau in nodal equations
//The nodal temperatures T1_1 and T2_1 at t=15sec
T1_1=0.0625*T1_0+0.46875*T2_0+33.482;//[degree Celcius]
T2_1=0.9375*T1_0+0.032366*T2_0+34.386;//[degree Celcius]
//Similarly the nodal themperatures T1_2,T2_2 at t1=2*t=30sec are
T1_2=0.0625*T1_1+0.46875*T2_1+33.482;//[degree Celcius]
T2_2=0.9375*T1_1+0.032366*T2_1+34.386;//[degree Celcius]
disp("degree Celcius",T2_2,T1_2,"and",T2_1,T1_1,"Temperatures at node 1 and 2 are respectively")
