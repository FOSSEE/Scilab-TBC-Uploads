//Example 14.5//

Em=6.9*10^3;//MPa //polymeric matrix modulus
Ef=72.4*10^3;//MPa //E- glass -reinforced epoxy
vm=0.4; //volume fractions of matrix and fibers
vf=0.6; //volume fractions of matrix and fibers
Ec=vm*Em+vf*Ef
mprintf("Ec = %e MPa",Ec)
