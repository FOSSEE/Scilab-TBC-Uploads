clear all; clc;
//the values of omegas and energycoeeficient differ from the ones given in the book
//the reasons for the same are mentioned in the code below
H=85
Q=16
E=0.9//efficiency
g=9.8
rho=998

P_o=E*rho*Q*g*H/1000
printf("The estimated power (Po) is equal to %0.0f kW",P_o)


disp("From figure 10.11,a Francis Turbine is selected. Then with the synchronous speed of 16 poles N is determined")
N=120*60/16
printf("N is equal to %grpm",N)


N_s=(N*Q^0.5)/H^0.75
printf("\nWe have value of Ns equal to %0.1f rpm(m^3/s)^0.5",N_s)


Ksigma=2.11
n=450/60
g=9.8
sigma=(Ksigma*n*Q^0.5)/((g*H)^0.75)
printf("\n Value of sigma is equal to %0.2f",sigma)


omega=(%pi*N)/30
V=16
omega_s=(omega*V^0.5)/((g*H)^0.75)//Answer given in the book is 1.33,this is because H has been wrongly substitued as 75. The correct substitution(H=85),gives the answer equal to 1.2157.
thita=1.9
K=1.054
printf("\n Value of omegas is equal to %g",omega_s)


disp("From figure 10.10 we have thita=1.9 for nq=Ns=64.3")
disp("Since K*D*(g*H)^0.25/Q^0.5=thita, we can determine D.")

D=(thita*(Q^0.5))/(((g*H)^0.25)*K)
printf("\n Value of D is equal to %0.2f m ",D)


disp("From figure 10.9 we have efficiency=0.95,which is close to the original estimation")
D=1.34//value of D is approximately equal to 1.34
k_phi=(%pi^2)/4
k_psi=(%pi^2)/2
flowcoeff=Q/(k_phi*n*(D^3))
printf("The flow coefficient is equal to %0.3f",flowcoeff)


energycoeff=(g*H)/(k_psi*(n^2)*(D^2))
printf("\nThe energy coefficient is equal to %0.4f",energycoeff)//Answer given in the book is 1.47,this is because H has been wrongly substitued as 75. The correct substitution(H=85),gives the answer equal to 1.6713.

