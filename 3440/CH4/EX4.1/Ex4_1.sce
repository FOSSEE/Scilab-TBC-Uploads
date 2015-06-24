clc

Iep=3//mA
Ieh=0.01//mA
Ich=0.001//mA
Icp=2.99//mA
gamma=Iep/(Iep+Ieh)
disp(gamma,"gamma =")
alphaT=Icp/Iep
disp(alphaT,"alphaT =")
alpha0=gamma*alphaT
disp(alpha0,"alpha0 =")
IE=Iep+Ieh
disp(IE,"IE in mA=")
IC=Icp+Ich
disp(IC,"IC in mA=")
ICBO=IC-alpha0*IE
disp(ICBO,"ICBO in mA")
