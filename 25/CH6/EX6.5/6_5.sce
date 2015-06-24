//example:-6.5,page no.-304.
//program to design a single section quarter wave matching transformer.
Zl=10;  // load impedence.
Zo=50; // characteristic impedence.
fo=3*10^9;swr=1.5; // maximum limit of swr.
Z1=sqrt(Zo*Zl); // characteristic impedence of the matching section.
taom=(swr-1)/(swr+1);
frac_bw=2-(4/%pi)*acos((taom/sqrt(1-taom^2))*(2*sqrt(Zo*Zl)/abs(Zl-Zo)));  // fractional bandwidth.
disp(Z1,'charecteristic impedence of matching section = ')
disp(frac_bw,'fractional bandwidth = ')