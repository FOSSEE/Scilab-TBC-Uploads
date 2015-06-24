// Comparing all-day efficiencies for diff given load cycles

clc;

r=15;             // kva rating
n_max=.98;
pf=1;
P_o=20;
P_i=r*(1-n_max)/2; 
k=r*pf/P_o;
P_c=P_i/(k^2);
function [W_o,W_in]=power(P_o,h)
    k=P_o/20;
    P_c=P_i*P_o/r;
    W_o=P_o*h;
    W_in=(P_o+P_i+(k^2)*P_c)*h;
endfunction

//(a)full load of 20kva 12hrs/day and no load rest of the day
a=[20 12];
[W_oa(1),W_ina(1)]=power(a(1),a(2));
aa=[0 12];
[W_oa(2),W_ina(2)]=power(aa(1),aa(2));
disp(W_oa,'W_o(kWh) for a');
disp(W_ina,'W_in(kWh) for a');
n_ada=sum(W_oa)/sum(W_ina);    disp(n_ada*100,'n_allday(a) in %age');

//(b)full load of 20kva 4hrs/day and .4 of full load rest of the day
b=[20 4];
[W_ob(1),W_inb(1)]=power(b(1),b(2));
bb=[8 20];
[W_ob(2),W_inb(2)]=power(bb(1),bb(2));
disp(W_ob,'W_o(kWh) for b');
disp(W_inb,'W_in(kWh) for b');
n_adb=sum(W_ob)/sum(W_inb);    disp(n_adb*100,'n_allday(b) in %age');


