clc;clear;
//Example 18.3
//calculation of fraction of e in CB

//given values
T=300;//temp in K
kT=.026;//temperture equivalent at room temp in eV
Eg1=.72;//forbidden gap of germanium in eV
Eg2=1.1;//forbidden gap of silicon in eV
Eg3=5.6;//forbidden gap of diamond in eV

//calculation
f1=%e^(-Eg1/(2*kT));
disp(f1,'fraction of e in  conduction band of germanium is');
f2=%e^(-Eg2/(2*kT));
disp(f2,'fraction of e in  conduction band of silicon is');
f3=%e^(-Eg3/(2*kT));
disp(f3,'fraction of e in  conduction band of diamond  is');
