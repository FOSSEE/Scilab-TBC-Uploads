//Section-5,Example-2,Page no.-D.124
//To calculate the number of molecules of HCl produced per joule of radiant energy absorbed
clc;
h=6.626*10^-34
c=3*10^8
lm=480*10^-9
E=(h*c)/lm
N_A=6.023*10^23
E_2=E*N_A                          //Energy per mole
q_eff=1.0*10^6                  //Quantum efficiency
n_HCl=2*q_eff                       //Number of moles of HCl produced
n_2=n_HCl/E_2
disp(n_2,'Number of moles of HCl produced per joule of radiant energy absorbed')
