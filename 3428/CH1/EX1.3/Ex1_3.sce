//Section-1,Example-3,Page no.-AC.35
// To find the number average molecular mass(M_nbar),weight averge molecular mass(M_wbar) and PDI
clc;
N1=100
N2=200
N3=300
M1=100
M2=1000
M3=10000
M_nbar=(N1*M1+N2*M2+N3*M3)/(N1+N2+N3)
disp(M_nbar,'number average molecular mass.')
M_wbar=(N1*M1^2+N2*M2^2+N3*M3^2)/(N1*M1+N2*M2+N3*M3)
disp(M_wbar,'weight average molecular mass.')
PDI=M_wbar/M_nbar
disp(PDI,'Polydispersity index.')
