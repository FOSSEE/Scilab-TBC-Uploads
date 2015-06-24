//pagenumber 27 example 4
clear
ni=1.5*10^10;//per cubic centimetre
moe=1300;//square centimetre/velocity second
mo1=500;//square centimetre/velocity second
w=5*10^22;//atoms per cubic centimetre
q=1.6*10^-19;
//(a) conductivity intrinisc at 300kelvin
conduc=ni*q*(moe+mo1);//conductivity
u=((ni)/(5*10^14));
ni=5*10^14;
//(b)conductivity when donor atom added to extent of 1 impurity
condu1=ni*q*moe;
disp("conductivity intrinisc at 300kelvin   =   "+string((conduc))+"second per centimetre");
disp("conductivity when donor atom added to extent of 1 impurity   =   "+string((condu1))+"second per centimetre");
//conductivity when acceptor added to extent of 1 impurity
conduc=ni*q*mo1;
disp("conductivity when acceptor added to extent of 1 impurity   =   "+string((conduc))+"second per centimetre");


