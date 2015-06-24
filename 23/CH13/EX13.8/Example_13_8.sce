clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 13.8
//Caption : Program to Find the Mole fraction of Ethyl Acetate

T0=298.15;
T=373.15;//[K]
R=8.314;
//CH3COOH(l)+C2H5OH(l) --> CH3COOC2H5(l) + H2O(l)

//From Table C.4
dHo_EtAc=-480000;//[J]
dHo_H2O=-285830;//[J]
dHo_EtOH=-277690;//[J]
dHo_AcH=-484500;//[J]

dGo_EtAc=-332200;//[J]
dGo_H2O=-237130;//[J]
dGo_EtOH=-174780;//[J]
dGo_AcH=-389900;//[J]

dHo_298=dHo_EtAc+dHo_H2O-dHo_EtOH-dHo_AcH;
dGo_298=dGo_EtAc+dGo_H2O-dGo_EtOH-dGo_AcH;

K_298=approx(exp(-dGo_298/(R*T0)),4);

//Using Eqn(13.15)
//ln(K_373/K_298)=c=-(dHo_298/R)*((1/373.15)-(1/298.15))
c=approx(-(dHo_298/R)*((1/373.15)-(1/298.15)),4);
K_373=approx(K_298*exp(c),4);

//x_AcH=x_EtOH=(1-e)/2  and x_EtAc=x_H2O=e/2
//K=(x_EtAc*x_H2O)/(x_AcH*x_EtOH)

//Hence The Eqn is
q=poly([K_373 -2*K_373 K_373-1],'e','c')
root=approx(roots(q),4)
e=root(1);
//Since Other Root is > 1 hence e=0.6879
x_EtAc=approx(e/2,3);

disp(x_EtAc,'Composition of Ethyl Acetate in the Reacting Mixture')

//End