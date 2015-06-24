Na = 10^18;
Nd = 5*10^15;
ni = 1.5*10^10;
kT = 0.0259;
E1 = kT*log(Na/ni);
E2 = kT*log(Nd/ni);
qV1 = E1+E2;
qV2 = kT*log(Na*Nd/ni^2);
disp(E1,"Fermi level position in p region (in eV)=")
disp(E2,"Fermi level position in n region (in eV)=")
disp(qV1,"Contact potential (in eV)=")
disp(qV2,"Contact potential (in eV)=")
disp("Contact potential value verified")