clc
n_O2=1;

//V_O2=0.21*V;
//V_N2=0.79*V;
M_N2=28;
M_O2=32;

disp("(i) Moles of N2 per mole of O2 :")
n_N2=n_O2*0.79/0.21;
disp("n_N2=")
disp(n_N2)
disp("moles")

n=n_O2+n_N2;
disp("(ii) p_O2 and p_N2 :")
p=1; //atm

p_O2=n_O2/n*p;
disp("p_O2=")
disp(p_O2)
disp("atm")

p_N2=n_N2/n*p;
disp("p_N2=")
disp(p_N2);
disp("atm")


disp("(iii) The kg of nitrogen per kg of mixture :")
x=n_N2*M_N2/(n_N2*M_N2+n_O2*M_O2);
disp(" The kg of nitrogen per kg of mixture =")
disp(x)
disp("kg N2/kg mix")