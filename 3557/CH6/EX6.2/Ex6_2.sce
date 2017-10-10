//Example 6.2//
p=50000;//N //tensile load
A0=5*10^-3;//m //area of the sample parallel to the applied load
s=p/(%pi*A0^2)
mprintf("s = %e N/m^2  637 MPa",s)
mprintf("  (As M= 10^6)")
s1=637*10^6;//Pa //Pascal //modulus of elasticity
E=200*10^9;//Pa // Pascal //Youngs Modulus
E1=s1/E
mprintf("\n E1 = %e ",E1)


