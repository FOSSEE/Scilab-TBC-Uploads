clc
Nd=6*10^16
disp("Nd = "+string(Nd)+" cm^-3") //initializing the value of donor concentration.
Na=10^17
disp("Na = "+string(Na)+" cm^-3")//initializing the value of acceptor concentration.
no=1.5*10^10
disp("no = "+string(no)+" cm^-3")//initializing the value of electron and hole per cm^3.
p=((Na-Nd)+sqrt((Na-Nd)^2+4*no))/2
disp("Hole concentration,n=(-(Na-Nd)+sqrt((Na-Nd)^2+4*no))/2)= "+string(p)+" cm^-3")//calculation
n=(no^2/p)
disp("Electron concentration,n=(no^2/p))= "+string(n))//calculation



//this is solved problem 2.14 of chapter 2.
//the value of Na,Nd in the solution is different than provided in the question 
//I have used the value used in the solution(i.e Na=10^17,Nd=6*10^16) 
