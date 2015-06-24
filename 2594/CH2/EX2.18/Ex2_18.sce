clc
e=1.6*10^-19
disp("e = "+string(e)+"columb") //initializing the value of electronic charge.
n=1*10^22
disp("n = "+string(n)+" /m^3") //initializing value of number of electrons per cm^3
u=1200*10^-4
disp("u = "+string(u)+" m^2/Vs") //initializing the value of mobility.
L=0.1*10^-2
disp("L = "+string(L)+" m") //initializing the value of length.
A=100*10^-12
disp("A = "+string(A)+" m^2") //initializing the value of area of cross section.
sigma=n*e*u
disp("conductivity,sigma=n*e*u)= "+string(sigma)+" siemen/m")//calculation.
p=(1/sigma)
disp("Resistivity,p=(1/sigma))= "+string(p)+" ohm metre")//calculation.
R=(p*L/A)
disp("resistance,R=(p*L/A))= "+string(R)+" ohm")//calculation.


//this is solved problem 2.5 of chapter 2.
//the value used for "A" in the solution is different than provided in the question.
//I have used the value provided in the solution (i.e A=100*10^-12) 




