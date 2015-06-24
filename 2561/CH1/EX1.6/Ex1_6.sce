//Ex1_6
clc
ni = 1.45*10^10 //initializations
nV = 5*10^22 //initializations
un = 1500 //initializations
up = 0475//initializations
T = 300 //initializations
I=10^(-6)
disp("I = "+string(I)+"Ampere") //initializing value of current
A=(50*10^(-4))^2; l=0.5 //initializations
q=1.59*10^(-19) //charge on an electron
disp("intrinsic charge concentration,ni = "+string(ni)+" /centimetre cube")
disp("silicon atoms concntration, nV = "+string(nV)+" /centimetre cube ")

disp("electron mobility,un = "+string(un)+" cm.sq/V-s")
disp("hole mobility,up = "+string(up)+"cm.sq/V-s")
disp("temperature,T = "+string(T)+"K")
disp("q = "+string(q)+"coulomb") //charge on an electron
disp("cross sectional area,A ="+string(A)+"cm square") 
disp("conductor length,l ="+string(l)+"cm")
 N=nV/ni
disp("relative concentration,N =nV/ni= "+string(N)+" silicon atoms per electron -hole pair") //calculation
sigma=(1.59*10^(-19)*(1.45*10^10)*(1500+0475))
disp("intrinsic conductivityi,sigma =(1.59*10^(-19)*(1.45*10^10)*(1500+0475))= "+string(sigma)+" (ohm-cm)^-1") //calculation
pi =(1/sigma)//formulae
disp("resitivity(rho),pi =(1/sigma)="+string(pi)+" ohm-cm")//calculation
R=(2.22*10^5*0.5)/0.000025
disp(" resistance for silicon,R =((2.22*10^5*0.5)/0.000025) = "+string(R)+" ohm") //calculations for silicon
V=I*R
disp(" voltage drop,V =I*R = "+string(V)+" V") //calculations 
