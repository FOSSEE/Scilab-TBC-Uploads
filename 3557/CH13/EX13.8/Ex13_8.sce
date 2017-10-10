//Example 13.8//

//There is one H2O2 molecule (=two OH groups) per polyethylene molecule For 0.15 wt%H2O2
C=12.01;//amu //atomic mass of carbon //(From Appendix 1)
H=1.008;//amu //atomic mass of hydrogen //(From Appendix 1)
O=16.00;//amu //atomic mass of oxygen //(From Appendix 1)
a=2;//Number of atoms
b=4;//Number of atoms
c=0.15;//wt % H2O2
d=0.16; //wt % H2O2
n1=(((a*H)+(a*O))/(((a*C)+(b*H))*c))*100
mprintf("n1 = %i ",n1)
n2=(((a*H)+(a*O))/(((a*C)+(b*H))*d))*100
mprintf("\nn2 = %i ",n2)
d=((n2-n1)/n1)*100
mprintf("\nd = %f percent",d)
