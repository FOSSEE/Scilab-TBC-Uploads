clc
Nd=10^17
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor concentration.
Na=0
disp("Na= "+string(Na)+" /cm^3") //initializing value of acceptor concentration.
no=1.8*10^6
disp("no = "+string(no)+" /cm^3") //initializing value of electron and hole concentration per cm^3.
E=5
disp("E = "+string(E)+" V/cm") ////initializing value of electric field. 
un=7500
disp("un = "+string(un)+" cm^2/s") ////initializing value of mobility. 
n1=10^17
disp("n1= "+string(n1)+" cm^-3") //initializing value of impurity concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
n=(-(Na-Nd)+sqrt((Na-Nd)^2+4*no))/2
disp("Electron concentration,n=(-(Na-Nd)+sqrt((Na-Nd)^2+4*no))/2)= "+string(n)+" cm^-3")//calculation
p=(no^2/n)
disp("Hole concentration,p=(no^2/n))= "+string(p)+" cm^-3")//calculation
Jdrift=n1*un*e*E
disp("Drift current density,Jdrift=n1*un*e*E)= "+string(Jdrift)+" A/cm^2")//calculation
