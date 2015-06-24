clc 
// Given that
a = 15 // Side of the aluminium cube in cm
Sh = 0.065 // Volume shrinkage of aluminium during solidification
// Sample Problem 9 on page no. 81
printf("\n # PROBLEM 2.9 # \n")
Vc = a^3
Vr = 3*Sh*Vc
h = ((4*Vr)/%pi)^(1/3)
Rr = 6/h // Where Rr= (A/V)r
Rc = 6/a // Where Rc = (A/V)c
printf("(A/V)r=%f, (A/V)c=%f\n Hence Rr is greater than Rc",Rr,Rc)
dmin = 6/Rc
Vr_ = (%pi/4)*dmin^3
printf("\n With minimum value of d Vr=%d cm^3 .\n This valume is much more than the minimum Vr necessary. \nLet us now consider the top riser when the optimum cylindrical shape is obtained with h=d/2 \nand again (A/V)r = 6/d. However, with a large top riser,\n the cube loses its top surface for the purpose of heat dissipation.",Vr_)
Rc_ = 5/a
dmin_=6/Rc_
printf("\n d should be greater than or equal to %d cm",dmin_)
Vr__ = (%pi/4)*dmin_^2 *floor(h)
printf("\n The riser volume with minimum diameter is %d cm^3",Vr__)

