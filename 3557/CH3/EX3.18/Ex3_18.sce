//Example 3.18//
rsi=0.117;//nm //atomic radius of silicon (From appendix 2)
a=8;//given // (a is obtain by cross multiplication)
l= a*rsi//nm //body diagonal length
mprintf("l = %f nm",l)
//the linear density
b=2;//atoms //From the figure 3.23 there are two atoms per lattice point therefore we choose value 2 atoms in linear density
ld=b/l
mprintf("\n ld = %f atoms/nm",ld)
