clc();
clear;
// To calculate the complex polarisability of material
epsilonr=4.36;      //dielectric constant
t=2.8*10^-2;
N=4*10^28;
epsilon0=8.84*10^-12;
epsilon_r=epsilonr*t;
//epsilonstar=epsilonr-(j*epsilon_r)
//by substituting values epsilonstar = 4.36-(j*0.12208)
//by taking out 4.36 common we get epsilonstar = 4.36(1-(j*0.028))
//(epsilonstar-1)/(epsilonstar+2) = (N*alphastar/(3*epsilon0))
// (4.36(1-(j*0.028))-1)/(4.36(1-(j*0.028))+2) = (N*alphastar/(3*epsilon0))
//consider real part in numerator of LHS be A and in denominator be B
A=4.36-1;
B=4.36+2;
C=N/(3*epsilon0);
//therefore alpastar = (1/C)*((3.36-0.12208j)/(6.36-0.12208j))
//by rationalising the denominatore we get 
//((3.36-0.12208j)/(6.36-0.12208j))*((6.36+0.12208j)/(6.36+0.12208j))
//after simplifuing let real part ne X and imaginary part be Y
X=((3.36*6.36)+(0.12208*0.12208))/((6.36^2)+(0.12208^2));
Y=((3.36*0.12208)-(6.36*0.12208))/((6.36^2)+(0.12208^2));
//alphastar=(1/C)*(X+jY) = ((1/C)*X)+((1/C)*jY)
R=(1/C)*X;
I=(1/C)*Y;
printf("the complex polarizability in F-m^2 is");
disp('j',I,R);
//by taking 10^-40 common we get alphastar = (3.5-j0.06)*10^-40 F-m^2
