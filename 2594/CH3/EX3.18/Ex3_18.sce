clc
Nd=0
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor concentration.
Na=10^17
disp("Na= "+string(Na)+" /cm^3") //initializing value of acceptor concentration.
no=1.8*10^6
disp("no = "+string(no)+" /cm^3") //initializing value of electron and hole concentration per cm^3.
E=10
disp("E = "+string(E)+" V/cm") ////initializing value of electric field. 
un=200
disp("un = "+string(un)+" cm^2/s") ////initializing value of mobility. 
p1=10^17
disp("p1= "+string(p1)+" cm^-3") //initializing value of impurity concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
p=-(-(Na-Nd)-sqrt((Na-Nd)^2+4*(no^2)))/2
disp("Electron concentration,p=-(-(Na-Nd)-sqrt((Na-Nd)^2+4*(no^2)))/2= "+string(p)+" cm^-3")//calculation
n=(no^2/p)
disp("Hole concentration,n=(no^2/p))= "+string(n)+" cm^-3")//calculation
Jdrift=p1*un*e*E
disp("Drift current density,Jdrift=n1*un*e*E)= "+string(Jdrift)+" A/cm^2")//calculation
