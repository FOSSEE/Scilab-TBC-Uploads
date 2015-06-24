// To calculate the critical clearing angle for the generator for a 3-phase fault
clear 
clc;
ZA=.375;
ZB=.35;
ZC=.0545;
ZAB=((ZA*ZB)+(ZB*ZC)+(ZC*ZA))/ZC;//Reactance between the generator and infinite bus during the fault(p.u)
Zgbf=%i*.3+ %i*(.55/2) +%i*.15;//Reactance between the generator and infinite bus before the fault(p.u)
Zgb=%i*.3+ %i*(.55) +%i*.15;//Reactance between the generator and infinite bus after the fault is cleared (p.u)
Pmaxo=1.2*1/abs(Zgbf);// Maximum power output Before the fault(p.u)
Pmax1=1.2*1/abs(ZAB);// Maximum power output during the fault(p.u)
Pmax2=1.2*1/abs(Zgb);// Maximum power output after the fault(p.u)
r1=Pmax1/Pmaxo;
r2=Pmax2/Pmaxo;
Ps=1;
sindo=Ps/Pmaxo;
do=asind(sindo);
d0=asind(sindo)*%pi/180;
sindm=1/Pmax2;
cosdm=cosd(asind(sindm));
Dm=%pi*(180-(asind(sindm)))/180;
Dc=(((sindo*(Dm-d0))-(r2*cosdm))-(r1*cosd(do)))/(r2-r1);
dc=acosd(Dc);// critical angle
mprintf("The critical clearing angle is given by= %.1f ",dc);
