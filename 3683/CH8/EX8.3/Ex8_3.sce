sigma_cbc=7//in MPa
sigma_st=275//in MPa
lx=6//in m
ly=7//in m
D=lx*10^3/35//in mm
D=180//assume, in mm
W1=(D/10^3)*25//self-weight, in kN/m
W2=0.5//floor finish, in kN/m
W3=1//partitions, in kN/m
W4=5//live load, in kN/m
W=W1+W2+W3+W4//in kN/m
a=ly/lx
//panels I, II, V and VI belong to case 4 and panels III and IV belong to case 3
//for panels I, II, V and VI
//at mid-span
Ax=0.043
Ay=0.035
Mxm1=Ax*W*lx^2//in kN-m
Mym1=Ay*W*lx^2//in kN-m
//at support
Ax=0.058
Ay=0.047
Mxs1=Ax*W*lx^2//in kN-m
Mys1=Ay*W*lx^2//in kN-m
//for panels III and IV
//at mid-span
Ax=0.036
Ay=0.028
Mxm2=Ax*W*lx^2//in kN-m
Mym2=Ay*W*lx^2//in kN-m
//at support
Ax=0.047
Ay=0.037//<0.047, hence will not be considered
Mxs2=Ax*W*lx^2//in kN-m
//check for depth
M=max(Mxm1,Mym1,Mxs1,Mys1,Mxm2,Mym2,Mxs2)//in kN-m
d=sqrt(M*10^6/0.81/10^3)//in mm
d=170//assume, in mm
//assume 10 mm dia bars
dia=10//in mm
D=d+dia/2+15//>180 mm assumed value
D=190//in mm
d=D-dia/2-15//in mm
//main steel-short span
//for panels I, II, V and VI-at mid-span
z=0.92*d//in mm
Astm=Mxm1*10^6/sigma_st/z//in sq mm
s1=1000*0.785*dia^2/Astm//in mm
s1=195//assume, in mm
//at support
Ast=Mxs1*10^6/sigma_st/z//in sq mm
Astr=Ast-Astm//balance steel required at support, in sq mm
s2=1000*0.785*dia^2/Astr//in mm
s2=565//assume, in mm
//for panels III and IV-at mid-span
Astm=Mxm2*10^6/sigma_st/z//in sq mm
s3=1000*0.785*dia^2/Astm//in mm
s3=235//assume, in mm
//at support
Ast=Mxs2*10^6/sigma_st/z//in sq mm
Astr=Ast-Astm//balance steel required at support, in sq mm
s4=1000*0.785*dia^2/Astr//in mm
s4=775//assume, in mm
//long span
//at mid-span
//for panels I, II, V and VI
Astm1=Mym1*10^6/sigma_st/z//in sq mm
s5=1000*0.785*dia^2/Astm1//in mm
s5=240//assume, in mm
//for panels III and IV
Astm2=Mym2*10^6/sigma_st/z//in sq mm
s6=1000*0.785*dia^2/Astm2//in mm
s6=300//assume, in mm
//at support
//for panels I, II, V and VI
Ast=Mys1*10^6/sigma_st/z//in sq mm
Astr=Ast-Astm1/2-Astm2/2//balance steel required at support, in sq mm
s7=1000*0.785*dia^2/Astr//in mm
s7=550//assume, in mm
//steel for torsion, provide 6 mm dia bars
//(i)at outside corners of slab
Ast=Mxm1*10^6/sigma_st/z//in sq mm
At1=3/4*Ast//in sq mm
l=lx/5//in m
s8=l*10^3*0.785*6^2/At1//in mm
s8=110//assume, in mm
//(ii)at continuous support
At2=At1/2//in sq mm
s9=l*10^3*0.785*6^2/At2//in mm
s9=225//assume, in mm
mprintf("Summary of design\nSlab thickness=%d mm\nCover=15 mm\nSteel:(A)Panels I, II, V and VI-\n1. Short span (lx=6 m)\nMid-span - 10 mm dia bars @ %d mm c/c. Alternate bars are bent up at supports at a distance lx/4 from centre of support\nSupport - 10 mm dia @ %d mm c/c\n2. Long span (ly=7 m)\nMid-span - 10 mm dia bars @ %d mm c/c. Alternate bars are bent up at supports at a distance ly/4 from centre of support\nSupport - 10 mm dia @ %d mm c/c\n(B)Panels III and IV-\n1. Short span (lx=6 m)\nMid-span - 10 mm dia bars @ %d mm c/c. Alternate bars are bent up at supports at a distance lx/4 from centre of support\nSupport - 10 mm dia @ %d mm c/c\n2. Long span (ly=7 m)\nMid-span - 10 mm dia bars @ %d mm c/c. Alternate bars are bent up at supports at a distance ly/4 from centre of support\nSupport - 10 mm dia @ %d mm c/c\nTorsion steel\nOutside corners- 6 mm dia bars @ %d mm c/c both ways at top and bottom for a length of %f m\nContinuous support- 6 mm dia bars @ %d mm c/c both ways at top and bottom for a length of %f m",D,s1,s2,s5,s7,s3,s4,s6,s7,s8,l,s9,l)
//answer in textbook is incorrect
