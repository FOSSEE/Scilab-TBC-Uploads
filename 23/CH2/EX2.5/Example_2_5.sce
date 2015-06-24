clear;
clc;

//Example 2.5
//Caption : Program To Find The degree of freedom for the various systems

//Formula To be Used  F=2-#+N (Where,#(pi)-no of phases,N-number of chemical species)

//(a)-Liquid Water in equllibrium with its vapour.
N=1;
pi=2;
F=2-pi+N;
disp(F,'(a)Degree Of freedom is');

//(b)-Liquid Water in equllibrium with a mixture of vapour and nitrogen.
N=2;
pi=2;
F=2-pi+N;
disp(F,'(b)Degree Of freedom is');

//(c)-A liquid Soln of alcohol in water in equillibrium with its vapour
N=2;
pi=2;
F=2-pi+N;
disp(F,'(c)Degree Of freedom is');

//End