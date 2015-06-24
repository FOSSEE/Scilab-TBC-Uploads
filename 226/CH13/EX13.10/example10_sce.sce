//chapter 13
//example 13.10
//page 570
printf("\n")
printf("given")
hfemin=100;hfemax=400;hiemin=2*10^3;hiemax=5*10^3;Rc=12*10^3;Rl=120*10^3;Re1=150
disp(" voltage gain at extreme value ")
Avmax=(hfemax*((Rc*Rl)/(Rc+Rl)))/(hiemax+Re1*(1+hfemax))
Avmin=(hfemin*((Rc*Rl)/(Rc+Rl)))/(hiemin+Re1*(1+hfemin))
disp("approximate voltage gain")
Av=((Rc*Rl)/(Rc+Rl))/Re1