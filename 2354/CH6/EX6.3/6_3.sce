//example 6.3
clc; funcprot(0);
// Initialization of Variable
Tc=492;
Th=530;//temperature
Qh=6e5;
Wcycle=(1-Tc/Th)*Qh;
disp(Wcycle,"Minimum Work input theoritical in Btu/day");
MTC=Wcycle/3413*0.08;
disp(MTC,"Minimum cost theoritical in $/day");
clear()
