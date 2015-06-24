// example:-6.8,page no.-316.
// program to design a three section chebysev transformer.
Zl=100;Zo=50;taom=0.05;N=3;A=0.05;
thetam=asec(cosh((1/N)*acosh((1/taom)*abs((Zl-Zo)/(Zl+Zo)))))*(180/%pi);
x=(cosh((1/N)*acosh((1/taom)*abs((Zl-Zo)/(Zl+Zo)))))
tao_o=A*(x^3)/2;
tao_1=(3*A*(x^3-x))/2;  // from symmetry tao_3=tao_0;
Z1=Zo*((1+tao_o)/(1-tao_o));
Z2=Z1*((1+tao_1)/(1-tao_1));
Z3=Zl*((1-tao_o)/(1+tao_o));
disp(Z1,Z2,Z3,'the characteristic impedences are = ')