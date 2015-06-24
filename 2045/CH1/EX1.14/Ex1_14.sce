//pagenumber 33 example 14
clear
up=1800;//centimetre square per velocity second
un=3800;//centimetre square per velocity second

//(1) resistivity is 45 ohm
q=1.6*10^-19;//coulomb
ni=2.5*10^13;
sigma1=(un+up)*q*ni;
resist=1/sigma1;
disp("resistivity   =   "+string((resist))+"   ohm centimetre");
disp("resistivity equal to 45");
//(2) impurity added to extent of 1 atom per 10^9
n=4.4*10^22/10^9;

p1=ni^2/n;
sigma1=(n*un+p1*up)*q;
resist=1/sigma1;

disp("resistivity   =   "+string((resist))+"   ohm centimetre");
disp("resistivity equal to 32.4");


