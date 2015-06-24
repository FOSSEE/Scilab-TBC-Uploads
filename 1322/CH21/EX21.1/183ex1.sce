
//spiral spring example
clc;
clear;
close;
clf();
weight=linspace(0,0.5,6);
extension=[0 0.15 0.3 0.44 0.6 0.75];
plot2d(weight,extension,13);
xtitle("spiral spring example","vaues of L","values of E");
xgrid();
//Extension varies directly as the attached load
//let E=Extension,L=Load
//to find 'k',a pair of values is taken at point p
L=0.5;E=0.75;
plot(L,E,'r..');
legend("E=KL",'POINT P',2);
//substitute 'p' in E=K*L
K=E/L;
mprintf("the law is : \n E= %fL \n",K)
