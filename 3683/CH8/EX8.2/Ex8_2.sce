sigma_cbc=5//in MPa
sigma_st=230//in MPa
lx=3.75//in m
ly=4//in m
D=lx*10^3/40//in mm
D=100//assume, in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=0.5//floor finish, in kN/m
W3=2//live load, in kN/m
W=W1+W2+W3//in kN/m
a=ly/lx
//panels I and III belong to case 8 and panel II belong to case 6
//for panels I and III
//at mid-span
Ax=0.0483
Ay=0.043
Mx1=Ax*W*lx^2//in kN-m
My1=Ay*W*lx^2//in kN-m
//at support
Ay=0.057
Ms=Ay*W*lx^2//in kN-m
//for panel II
//at mid-span
Ax=0.0403
Ay=0.035
Mx2=Ax*W*lx^2//in kN-m
My2=Ay*W*lx^2//in kN-m
//at support
Ay=0.045//<0.057, hence not considered
d=sqrt(Ms*10^6/0.65/10^3)//in mm
d=80//assume, in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+15
//steel at centre
//for panels I and III
//short span
z=0.9*d//in mm
Ast=Mx1*10^6/sigma_st/z//in sq mm
s1=1000*0.785*dia^2/Ast//>3d
//long span
Ast=My1*10^6/sigma_st/z//in sq mm
s2=1000*0.785*dia^2/Ast//>3d
//for panel II
//short span
Ast=Mx2*10^6/sigma_st/z//in sq mm
s3=1000*0.785*dia^2/Ast//>3d
//long span
Ast=My2*10^6/sigma_st/z//in sq mm
s3=1000*0.785*dia^2/Ast//>3d
//steel at support
Ast=Ms*10^6/sigma_st/z//in sq mm
s4=1000*0.785*dia^2/Ast//>3d
s=3*d//maximum spacing of bars in both directions as per IS 456, in mm
Ast=1000*0.785*dia^2/s//in sq mm
pt=Ast/10^3/d*100//in %
//steel for torsion, provide 6 mm dia bars
//(i)at outer corner of slab
At1=3/4*Ast//in sq mm
l=lx/5//in m
s5=750*0.785*6^2/At1//in mm
s5=85//assume, in mm
//(ii)at continuous support
At2=At1/2//in sq mm
s6=750*0.785*6^2/At2//in mm
s6=170//assume, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nCover=15 mm\nSteel for both panels I and II-\nMain steel= 10 mm dia bars @ %d mm c/c both ways. Alternate bars are bent up at supports.\nTorsion steel=(i) At corners, 6 mm dia bars @ %d mm c/c both ways\n(ii) At continuous support, 6 mm dia bars @ %d mm c/c both ways",D,s,s5,s6)
