//Ex1_7
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
disp("hole mobility,up = "+string(up)+" cm.sq/V-s")
disp("temperature,T = "+string(T)+" K")
disp("q = "+string(q)+"coulomb") //charge on an electron
disp("cross sectional area,A ="+string(A)+" cm square") 
disp("conductor length,l ="+string(l)+" cm")
nD=nV/10^6//formulae
disp("donor concentration,nD= nV/10^6="+string(nD)+" /cm.cube")//calculation
nn=nD//formulae
disp("resulting mobile electron concentration,nn= nD="+string(nn)+" /cm.cube")//calculation
pn= ni^2/nD//formulae
disp("resulting hole concentration,pn= ni^2/nD="+string(pn)+" /cm.cube")//calculation
sigma=q*nD*un//formulae
disp("n-type semiconductor conductivity,sigma=q*nD*un= "+string(sigma)+" (ohm-cm)^-1") //calculation
pn =(1/sigma)
disp("doped silicon resitivity(rho),pn =(1/sigma)="+string(pn)+" ohm-cm")//calculation
R=(0.084*0.5)/A
disp(" resistance for silicon,R =((0.084*0.5)/A) = "+string(R)+" ohm") //calculations for silicon
V=I*R
disp(" voltage drop,V =I*R = "+string(V)+" V") //calculations 
