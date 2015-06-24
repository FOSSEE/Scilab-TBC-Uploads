printf('The kinetic equation for a second order reaction involving unequal concentrations of the reactants is\nk2=(2.303/(t*(a-b)))*log10((b*(a-x))/(a*(b-x)))');
k=2.312*10^-4;
p=4.94*10^-3;//value of (a-b)//
k2=(k*2.303)/p;//second order reaction rate//
printf('\nSecond order reaction rate=k2=%flitre per mol per second',k2);
