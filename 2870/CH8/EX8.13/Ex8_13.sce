clc;clear;
//Example 8.13

//given data
T0=20+273;//in K
P0=100;
Tiw=30+273;//in K
mw=100;
Tii=350+273;//in K
mi=5;

//constants used(Table A-3)
cw=4.18;//in kJ/kg C
ci=0.45;//in kJ/kg C

//calculations
Tfk=(mi*ci*Tii+mw*cw*Tiw)/(mw*cw+mi*ci);
Tfc=Tfk-273;//in C
disp(Tfc,'the final equilibrium temperature in C');
X1i=mi*ci*(Tii-T0-T0*log(Tii/T0));
X1w=mw*cw*(Tiw-T0-T0*log(Tiw/T0));
X1t=X1i+X1w;//total exergy 
disp(X1t,'intial exergy of combined systems in kJ');
X2i=mi*ci*(Tfk-T0-T0*log(Tfk/T0));
X2w=mw*cw*(Tfk-T0-T0*log(Tfk/T0));
X2t=X2i+X2w;//total exergy 
disp(X2t,'intial exergy of combined systems in kJ');
Xdestroyed=X1t-X2t;
disp(Xdestroyed,'the wasted work in kJ')
