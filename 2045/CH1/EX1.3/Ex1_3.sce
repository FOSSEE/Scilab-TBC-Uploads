//pagenumber 26 example 3
clear
ni=2.5*10^13;//per square centimetre
moe=3800//square centimetre/velocity second
mo1=1800;//square centimetre/velocity second
num=4.51*10^22;//number of atoms
q=1.6*10^-19;
conduc=ni*q*(moe+mo1);
num=num/10^7;
impura=(ni^2)/num;
ni=5*10^14;
condu1=ni*q*moe;
disp("conductivity   =   "+string((conduc))+"second per centimetre");
disp("conductivity at extent of 1 impurity   =   "+string((condu1))+"second per centimetre");//there is mistake in book as 3.04s/cm
conduc=num*q*mo1;
disp("conductivity  acceptor to extent of 1 impurity   =   "+string((conduc))+"second per centimetre");



