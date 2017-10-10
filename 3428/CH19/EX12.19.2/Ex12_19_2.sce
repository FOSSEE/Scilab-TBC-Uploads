//Section-12,Example-2,Page no.-SS.59
//To calculate the conductivity of pure silicon at room temperature.
clc;
u_e=1500           //cm^2/volt-sec
u_h=500                     //cm^2/volt-sec
e=1.6*10^-19                    //Coulombs
n_i=1.6*10^-10                   //per cm^3
C_i=e*n_i*(u_e+u_h)
disp(C_i,'Conductivity of pure silicon at room temperature(mho/cm)')

//Answer given in the book C_i=5.12*10^-6 is wrong.
