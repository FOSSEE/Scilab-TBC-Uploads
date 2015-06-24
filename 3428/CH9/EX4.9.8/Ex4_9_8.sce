//Section-4,Example-1,Page no.-I.65
//To calculate the concentration of the solution
clc;
e=4000              //Extinction coefficient(dm^3mol^-1cm^-1)
A=log10(1/0.3)          //A=log(I/I_0)=log(1/0.3)
x=3
C=(A/(e*x))
disp(C,'Concentration of the solution(moldm^-3)')
