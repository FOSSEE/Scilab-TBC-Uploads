clc;
clear;
exec ("C:\Program Files\scilab-5.3.0\bin\TCP\1.6data.sci");
//for isentropic compression, (p1(d1^k))=(p2/(d2^k))
//volume*density=constant(mass)
ratd=V1/V2;
p2=((ratd)^1.66)*p1;//psi(abs)
disp("psi(abs)",p2,"final pressure p2=")

i=1;
ratV=0.01:0.01:1.0;

for j=0.01:0.01:1.0
    pres(i)=p1/((j)^1.66);
    i=i+1;
    
end

plot2d(ratV,pres,rect=[0,0,1,1000])
xtitle('p2 vs V2/V1','V2/V1','p2 psi')
