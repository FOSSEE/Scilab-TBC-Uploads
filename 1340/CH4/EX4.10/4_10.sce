clc;
s = %s;
C1 = 26.25*(s+4)/(s*(s+3.5)*(s+5)*(s+6));
pf = pfss(C1);
disp(pf);
k = numer(pf(4));
disp("cannot be made",C1,"second order approx of",k,"since the residue of pole at -3.5,which is close to zero at 4 is =");
C2 = 26.25*(s+4)/(s*(s+4.01)*(s+5)*(s+6));
pf1 = pfss(C2);
disp(pf1);
l = numer(pf(4));
disp("is small compared to the residues at other poles",l,"residue of pole at -4.01");
C2 = C2 -pf1(4);
syms t s;
td = ilaplace(C2,s,t)
disp(td,"second order approx of C2 = ")


