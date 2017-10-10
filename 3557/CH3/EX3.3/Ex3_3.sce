//Example 3.3//
rMg=0.078;//nm // Ionic radius of Magnesium (From Appendix 2)
rO=0.132;//nm // Ionic radius of Oxygen (From Appendix 2)
a=2*rMg+2*rO
mprintf("a = %f nm",a)
Vu=(a)^3;//nm
mprintf("\nVu = %f nm^3",Vu)
b=4;//by formula
c=4/3;//By formula
volume=((b*c)*%pi*(rMg)^3)+((b*c)*%pi*(rO)^3)
mprintf("\nvolume = %f nm^3",volume)
IPF=volume/Vu;
mprintf("\nIPF = %f ",IPF)
