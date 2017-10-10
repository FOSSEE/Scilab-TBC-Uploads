//Example 13.4//
S=32.06;//amu //atomic mass of sulphur //(From Appendix 1)
C=12.01;//amu //atomic mass of carbon //(From Appendix 1)
H=1.008;//amu //atomic mass of hydrogen //(From Appendix 1)
a=5;//Number of atoms
b=8;//Number of atoms
ms=S/((a*C)+(b*H))*100
mprintf("ms = %f ",ms)
c=20;//g //amount of sulphur added
fr=c/ms
mprintf("\nfr = %f ",fr)
