//pagenumber 31 example 9
clear
moe=1350;//square centimetre/velocity second
mo1=450;//square centimetre/velocity second
ni=1.5*10^10;//per cubic centimetre
concn1=ni*((sqrt(mo1/moe)));//concentration
concne=((ni^2)/(concn1));


disp("concentration of electron   =   "+string((concn1))+"per cubic centimetre");
disp("concentration of holes   =   "+string((concne))+"per cubic centimetre");
