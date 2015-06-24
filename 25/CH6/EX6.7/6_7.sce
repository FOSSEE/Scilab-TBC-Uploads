// example:-6.7,page no.-312.
// program to design three section binomial transformer.
Zl=50;Zo=100;N=3;taom=0.05;
A=(2^-N)*abs((Zl-Zo)/(Zl+Zo));
frac_bw=2-(4/%pi)*acos(0.5*(taom/A)^2);
for c=1
  Z1=Zo*((Zl/Zo)^((2^-N)*(c^N)));
disp(Z1,'Z1 = ')
end
for c=3^(1/3)
  Z2=Z1*((Zl/Zo)^((2^-N)*(c^N)));
  disp(Z2,'Z2 = ')
end
for c=3^(1/3)
  Z3=Z2*((Zl/Zo)^((2^-N)*(c^N)));
  disp(Z3,'Z3 = ')
end