//Example 6.1//

s=300*10^6;//Pa //pascal //strain
a=0.0043;// From the figure
E1=s/a
mprintf("E1 = %e GPa= 70GPa ",E1)
mprintf("  (As G= 10^9)")
//The 0.2% offset construction gives 
mprintf("\nY.S. =410MPa")
//The maximum for the stress stain curve gives
mprintf("\n T.S = 480MPa")
ef=0.08;//percent //the strain at fracture
f=100*ef
mprintf("\n f = %i percent",f)
