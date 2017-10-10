clc;
//Page no:2-31
//Example-2.22
//There are two antennas, therefore power delivered by each antenna is Pt=I^2*R
//Pt'=I^2'*R and Pt'=Pt/2
//I^2*R/2=I^2'*R
//I^2'=I^2/2=2
//I'=sqrt(2)A
//Let I' is denoted by I1
//Total current required for two antennas is given as
I1=sqrt(2);
Itotal=I1*2;
Itot=2;
u=0.6;
//Itot=Ic*sqrt(1+(u^2/2))
Ic=Itot/sqrt(1+(u^2/2));
disp(Ic,'Ic=');
//Keeping Ic constant we calculate modulation index to get Itotal=2*sqrt(2)
u1=sqrt([(Itotal/Ic)^2-1]*2);
disp(u1,'u=');
