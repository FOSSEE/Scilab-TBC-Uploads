clear
clc
disp("example 10.3")
function [ic]=unit1(p1)
    ic=0.2*p1+30
endfunction
function [ic]=unit2(p2)
    ic=0.15*p2+40
endfunction
tol=400
pd=50
u1c=5
u2c=1/0.15//from example10_1
p1pd=u1c/(u1c+u2c)
p2pd=u2c/(u1c+u2c)
pi=p1pd*pd
pt=p2pd*pd
printf("p1=%1.5fMW\n p2=%1.5fMW",pi,pt)
p11=pi+tol/2
p22=pt+tol/2
up1=unit1(p11)
up2=unit2(p22)
 printf("\nthe total load on 2 units would be %3.2fMW and %3.2fMW respectevily. it is easy to check that incremental cost will be same for two units at these loading.\n incremental cost of unit1 is %3.2fRs.MW,\n incremantal cost of unit 2 is %3.2fRs./MW",p11,p22,up1,up2)
