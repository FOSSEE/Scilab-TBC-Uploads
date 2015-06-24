//clc()
//CO + CL2 = COCl2
Np = 12;//moles
NCl2 = 3;//moles
NCO = 8;//moles
N1Cl2 = NCl2 + Np;
N1CO = NCO + Np;
pr.ex = (N1CO - N1Cl2)* 100/N1Cl2;
pr.co = (N1Cl2-NCl2) * 100/ N1Cl2;
T = Np + NCl2 + NCO;
T1 = N1Cl2 + N1CO;
N = T / T1;
disp("%",pr.ex,"(a)percent excess of CO = ")
disp("%",pr.co,"(b)percent conversion = ")
disp(N,"(c)Moles of total products per mole of total reactants = ")