kT = 26*10^-3; //in eV
ni = 1.5*10^10;
T = 300;
q = 1.6*10^-19;
Wf = 4.1;
EA1 = 0.9;
EA2 = 4.15;
Na = 10^14;
Eg = 1.11;
Efi = Eg/2;
Ef = Efi + kT*log(Na/ni);
disp(Ef,"Ef = ")
disp("below the conduction band")
Vfb = Wf - (EA2+Ef);
disp(Vfb,"V(fb) = ")