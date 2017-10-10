//Example13.2//

H=1.008;//amu //atomic mass of Hydrogen //(From Appendix 1)
O=16.00;//amu //atomic mass of Oxygen //(From Appendix 1)
C=12.01;//amu //atomic mass of carbon ////(From Appendix 1)
a=2;//Number of atoms
b=4;//Number of atoms
d=750;//average degree of polymerization
H2O2=((a*H)+(a*O))/(d*((a*C)+(b*H)))*100
mprintf("H2O2 = %f wt percent",H2O2)
