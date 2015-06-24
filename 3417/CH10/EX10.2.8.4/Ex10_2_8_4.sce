//Ex10.2.8.4;calculate del_G,del_S,del_H;

//We have the relation del_G=-n*F*E
//where,del_G=gibbs free energy of the system at 1 atm and temperature(T)
n=1;//numbers of electons transferred per molecule of reactant
E=0.0455;//volts ;e.m.f. of the cell
F=96500;//Faraday's constant
//let X=dE/dT
X=0.000338;
del_G=-n*F*E;
printf(" del_G=%f joules",del_G);
//del_S = Entropy change of the system at temperature T and press p=1 atm in the case
del_S=n*F*(X);//del_S=n*F*(dE/dT)
printf("\n del_S=%f joules/deg.",del_S);
//And entropy change is given by the relation del_H=nF[T(dE/dT)-E]
T=298;
del_H=n*F*((T*X)-E);
printf("\n del_H=%f joule",del_H);


//value are taken approximate in the text book to the real calculated value
