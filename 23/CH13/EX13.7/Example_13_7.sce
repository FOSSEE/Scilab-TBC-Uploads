clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.7
//Caption : Program to Find the Composition of Product Steam at Equillibrium
 
T=1393.15;//K
P=1;//[bar]
x=10^4/T;
//C2H2 --> 2C + H2  (I)
//2C + 2H2 --> C2H4 (II)

//Values Of ln K (at  1000/T )for Reactions I and II from Graph
K_I=exp(12.9);
K_II=exp(-12.9);
K=K_I*K_II;

//Application in Eqn (13.5)

//y_C2H4/(y_C2H2*y_H2)=c=(P/Po)K
c=P*K;
//y_H2=y_C2H2=(1-e)/(2-e)
//y_C2H4=e/(2-e)


//The Eqn comes out to be
poly([1 -4 2],'e','c')

root=approx(roots(poly([1 -4 2],'e','c')),3)
e=root(1);
//Since e > 1 not possible so e=0.293
y_C2H2=approx((1-e)/(2-e),3);
y_H2=y_C2H2;
y_C2H4=approx(e/(2-e),3);

disp(y_H2,y_C2H2,y_C2H4,'Equilibrium Composition of H2 C2H2 and C2H4 Respectively ')

//End