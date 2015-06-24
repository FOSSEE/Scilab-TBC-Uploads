C1=0.04;
C2=0.02;
x=(C1^2)/(C2+(2*C1));//The amount of Na+ transported at equilibrium in M//
printf('The amount of Na+ transported at equilibrium=x=%fM',x);
NaR=C2+x;//Na+ on RHS//
printf('\nNa+ on RHS=NaR=%fM',NaR);
NaL=C1-x;//Na+ on LHS//
printf('\nNa+ on LHS=NaL=%fM',NaL);
