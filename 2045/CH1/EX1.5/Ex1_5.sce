//pagenumber 28 example 5
clear
ni=2.5*10^13;//per cubic centimetre
moe=3800;//square centimetre/velocity second
mo1=1800;//square centimetre/velocity second
w=4.5*10^22;//atoms per cubic centimetre
q=1.6*10^-19;
//(1) conductivity intrinisc at 300kelvin
conduc=ni*q*(moe+mo1);
u=10^6;
u=((w)/(u));
//(2) conductivity with donor impurity 1
condu1=u*q*moe;
disp("conductivity intrinisc at 300kelvin   =   "+string((conduc))+"second per centimetre");
disp("conductivity with donor impurity 1   =   "+string((condu1))+"second per centimetre");
u=10^7;u=w/u;
//(3) conductivity with acceptor impurity 1
conduc=u*q*mo1;
disp("conductivity with acceptor impurity 1   =   "+string((conduc))+"second per centimetre");
u=0.9*(w/10^6);
//(4) conductivity on both
conduc=u*q*moe;
disp("conductivity on both   =   "+string((conduc))+"second per centimetre");
