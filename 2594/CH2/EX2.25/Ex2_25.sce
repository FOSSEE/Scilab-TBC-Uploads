clc
Nd=1*10^17
disp("Nd = "+string(Nd)+" cm^-3") //initializing the value of donor concentration.
Na=0
disp("Na = "+string(Na)+" cm^-3")//initializing the value of acceptor concentration.
no=1.5*10^10
disp("ni = "+string(no)+" cm^-3")//initializing the value of electron hole per cm^3.
n=(-(Na-Nd)+sqrt((Na-Nd)^2+4*no))/2
disp("Electron concentration,n=(-(Na-Nd)+sqrt((Na-Nd)^2+4*no))/2)= "+string(n)+" cm^-3")//calculation
p=(no^2/n)
disp("Hole concentration,p)= "+string(p)+" cm^-3")//calculation



//this is solved problem 2.13 of chapter 2.
