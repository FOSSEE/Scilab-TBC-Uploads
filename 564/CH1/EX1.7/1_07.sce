pathname=get_absolute_file_path('1_07.sce')
filename=pathname+filesep()+'1_07data.sci'
exec(filename)
E1=0.5*(Ea+Ec) + (((Ea-Eb)^2 +(Ec-Eb)^2)/2)^0.5;
E2=0.5*(Ea+Ec) - (((Ea-Eb)^2 +(Ec-Eb)^2)/2)^0.5;
disp(E1,"εI=",E2,"εII=");
S1=E*(E1+ v*E2)/(1-v^2);//σI
S2=E*(E2+ v*E1)/(1-v^2);//σII
Sx=S1+S2;//σx
printf("\nσI: %f N/mm^2",S1);
printf("\nσII: %f N/mm^2",S2);
printf("\nσx: %f N/mm^2",Sx);
P=Sx*(%pi*d^2)/4;//axial tensile load
Txy=(((S1-S2)^2 -(S1+S2)^2)/4)^0.5;//τxy
printf("\nτxy: %f N/mm^2",Txy);
J=(%pi*d^4)/32;//torsion constant
T=2*Txy*J/d;//Torque
disp(p/10^3,"P in KN",P,"P(N)=");
disp(T/10^6,"T in KN.m",T,"T (N.mm)=");