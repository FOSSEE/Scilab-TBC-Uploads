//Section-12,Example-5,Page no.-SS.60
//To find the Intrinsic and Extrinsic conductivity.
clc;
n_i=2.5*10^13
u_n=3800
u_e=1800
N_Ge=4.41*10^22
e=1.6*10^-19
C_i=n_i*e*(u_n+u_e)
disp(C_i,'Intrinsic conductivity(mho per cm)')
N_D=N_Ge/10^7
n=N_D                           //concentration of electrons
p=((n_i)^2)/N_D                  //concentration of holes
C_n=(e*(N_D)*(u_n))
disp(C_n,'Conductivity of n-type germanium semiconductor(mho/cm)')
