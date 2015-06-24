//Chapter-2,Example2_23_1,pg 2-52

ni=2.4*10^19                            //density of intrensic semiconductor

n=4.4*10^28                             //no atom in Ge crystal

Nd=n/10^6                               //density

Na=Nd

e=1.6*10^-19                            //charge on electron

T=300                                   //temerature at N.T.P.

K=1.38*10^-23                           //Boltzman constant

Vo=(K*T/e)*log(Na*Nd/(ni^2))

printf("Potential barrier for Ge =")

disp(Vo)

printf("Volts")


