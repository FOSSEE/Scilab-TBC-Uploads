
clc
disp("In the Boltzmann approximation, the carrier density is simply")
disp("n = Nc = 2.78*10^19 cm^-3")
N=2.78*10^19
disp("N = "+string(N)+"cm^-3") //initializing value of carrier density
//In joyce dixon approximation the carrier density is obtained from the solution of the equation
disp("Ef = 0 = kBT *(log(n/Nc)+(n/(sqrt8*Nc)))")
//solving by trial and error , we get
//n/Nc= 0.76
n=0.76*N
disp("electron carrier concentration is n=0.76*Nc= "+string(n)+" cm^-3")//calculation
