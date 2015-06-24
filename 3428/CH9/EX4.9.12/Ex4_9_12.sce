//Section-4,Example-1,Page no.-I.78
//To calculate the number of protons in a sample exposed to the given magnetic field.
clc;
T=20+273
k=1.38*10^-23
//dl_E=g1*muN*B_0
B_01=1
dl_E1=2.821*10^-26*B_01
//N=N_a/N_b(ratio of protons having a&b spins respectively)
N_1=((k*T)/((k*T)-(dl_E1)))
disp(N_1,'Ratio for 1.0 Tesla magnetic field')
B_02=10
dl_E2=2.821*10^-26*B_02
N_2=((k*T)/((k*T)-(dl_E2)))
disp(N_2,'Ratio for 10.0 Tesla magnetic field')



//Marked as Ex 1 in page I.78
