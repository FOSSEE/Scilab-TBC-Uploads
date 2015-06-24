//Chapter 4, Problem 4
clc;
emf=1.5;
r=0.2;                      //Internal resistance of 1 cell
R=58;                       //Resistance of load in ohm
E=10*emf;                   //Total battery e.m.f
rt=10*r;                    //Total internal resistance in ohm
Rt=R+rt;                    //Total resistance in ohm
I=E/Rt;                     //Current flowing in the circuit
V=E-(I*rt);                 //P.d. at battery terminals
printf("Current flowing in the circuit = %f A\n\n\n",I);
printf("P.d. at battery terminals = %f V",V);
