//Example11.2//
pFe=7.87;//Mg/m^3 // Density of iron (From Appendix 1)
pAl=2.70;//Mg/m^3 // Density of Aluminium (From Appendix 1)
mFe=25;//kg // resulting mass saving
a=1;//Mg // given
b=10^3;//kg //given
V=(mFe/pFe)*(a/b)
mprintf("V = %e m^3",V)
//the mass of new aluminium parts would be
mAl=pAl*V*(b/a)
mprintf("\nmAl = %f kg",mAl)
//the resulting mass saving is then
m=mFe-mAl
mprintf("\nm = %f kg",m)
