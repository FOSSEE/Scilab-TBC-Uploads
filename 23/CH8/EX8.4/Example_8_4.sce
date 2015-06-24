clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 8.4
//Caption : Program to Find the Efficiency in Various Cycles in a Gas turbine

//Given Values
K=6;//Pb/Pa
T1=298.15;//[K]
Tmax=1033.15;//[K]
Gamma=1.4;

//(a)  Gamma=1.4
//From Eqn(8.12)
eta_a=approx(1-((1/K)^((Gamma-1)/Gamma)),1);
disp('(a)Efficiency of an ideal air cycle')
disp(eta_a,'Efficiency')

//(b)  eta_c=0.83  eta_t=0.86
eta_c=0.83;
eta_t=0.86;
K2=Tmax/T1;
alpha=(K)^((Gamma-1)/Gamma);

//Using Eqn(8.13)
eta_b=approx(((eta_t*eta_c*K2*(1-(1/alpha)))-(alpha-1))/((eta_c*(K2-1))-(alpha-1)),3);
disp('(b)Thermal efficiency of an air cycle if the Compressor and Turbine Operate adiabatically')
disp(eta_b,'Thermal efficiency')

//End