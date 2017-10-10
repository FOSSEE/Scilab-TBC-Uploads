// Example 2.5//

rna=0.098;//nm // Ionic radius of Sodium (From appendix 2)
rcl=0.181;//nm // Ionic radius of Cholrine (From Appendix 2)
a0=rna+rcl
mprintf("a0 = %f nm",a0)
k0=9*10^9;//V m/C //Proportionality constant
z1=0.16*10^-18;//C //coloumb //valence of charged ion
z2=0.16*10^-18;//C //coloumb //valence of charged ion
q=1;// charge of single electron
q1=-1;//charge of single electron
a1=0.278*10^-9;//nm// separation distance between the centers of th ions
FC=-(k0*q*z1*q1*z2)/(a1^2)
mprintf("\nFC = %e N",FC)
// Nothing that 1V C=1J, we obtain

//(b) Because FC+FR =0
FR=-FC
mprintf("\nFR = %e N",FR)
