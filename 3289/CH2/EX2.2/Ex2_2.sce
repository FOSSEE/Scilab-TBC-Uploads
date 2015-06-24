clc;

epsilon0=190*10^(-6)
epsilon60=200*10^(-6)
epsilon120=-300*10^(-6)
E=200// GPa
v=0.3
epsilonx=epsilon0
disp(epsilonx,"value of epsilonx is= ")

// epsilon60=((epsilonx+epsilony)/2)-((epsilonx-epsilony)/4)+(gammaxy*sqrt(3))/4 eqn 1
// epsilon120=((epsilonx+epsilony)/2)-((epsilonx-epsilony)/4)-(gammaxy*sqrt(3))/4 eqn 2

epsilony=(2*(epsilon60+epsilon120)-epsilon0)/3
disp(epsilony,"value of epsilony is= ")
gammaxy=(2/sqrt(3))*(epsilon60-epsilon120)// from eqn 1 and eqn 2
disp(gammaxy,"value of gammaxy is= ")
epsilon1=((epsilonx+epsilony)/2)+sqrt(((epsilonx-epsilony)/2)^2+(gammaxy/2)^2)// epsilony value is in negative so the sign changes in the eqn
disp(epsilon1,"value of epsilon1 is= ")
epsilon2=((epsilonx+epsilony)/2)-sqrt(((epsilonx-epsilony)/2)^2+(gammaxy/2)^2)//epsilony value is in negative so the sign changes in the eqn
disp(epsilon2,"value of epsilon2 is= ")

gammamax=(2*10^-6)*sqrt(((epsilonx-epsilony)/2)^2+(gammaxy/2)^2)
disp(gammamax,"max shear strain is= ")
thetap=atand(577/320)/2
disp(thetap,"orientations of principal axes is= ") // or
thetap1=atand(577/320)*2
disp(thetap1,"orientations of principal axes is= ")
sigma1=(200*10^9/(1-0.09))*(epsilon1+0.3*epsilon2)
disp(sigma1,"plane stresss is Pa= ")
sigma2=(200*10^3/(1-0.09))*(epsilon2+0.3*epsilon1)
disp(sigma2,"plane stresss is MPa= ")

taumax=(200*10^9/(2*(1+0.3)))*gammamax
disp(taumax,"plane stresss is MPa= ")


