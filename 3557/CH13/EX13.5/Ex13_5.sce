//Example13.5//

a=33.3;//g // of each components (acrylonitrile, butadiene, and sytrene)
C=12.01;//amu //atomic mass of carbon //(From Appendix 1)
H=1.008;//amu //atomic mass of hydrogen //(From Appendix 1)
N=14.01;//amu //atomic mass of Nitrogen //(From Appendix 1)
b=3;//Number of atoms
A=a/((b*C)+(b*H)+(N))
mprintf("A = %f mol",A)
c=4;//Number of atoms
d=6;//Number of atoms
B=a/((c*C)+(d*H))
mprintf("\nB = %f mol",B)
d=8;//Number of atoms
S=a/((d*C)+(d*H))
mprintf("\nS = %f mol",S)
fA=A/(A+B+S)
mprintf("\nfA = %f ",fA)
fB=B/(A+B+S)
mprintf("\nfB = %f",fB)
fS=S/(A+B+S)
mprintf("\nfS = %f",fS)
