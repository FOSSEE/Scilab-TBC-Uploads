clear;
clc;

function ic1=f(p1),ic1=.16*p1+30;
endfunction

function ic2=f1(p2),ic2=.20*p2+25;
endfunction
c1=intg(50,57.5,f);
c2=intg(65,57.5,f1);
printf("the increase in cost of unit 1 is:%.3f Rs/h\n",c1);
printf("the increase in cost of unit 2 is:%.3f Rs/h\n",c2);

net=c1+c2;
sav=net*365*24;
printf("The total yearly saving is:%.2f Rs",sav);











