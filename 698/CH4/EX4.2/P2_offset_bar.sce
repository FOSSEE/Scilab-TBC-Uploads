clc
//Example 4.2
//Offset bar

//------------------------------------------------------------------------------

//Given data
//Couple causing force
F=900 // N
//Distance between forces
d=0.14 //m
//Dimensions of bar
h=0.025 // m
R=0.09 // m
t=0.05 // m

res2=mopen(TMPDIR+'2_offset_bar.txt','wt')

//Bending moment
M=d*F
mfprintf(res2,'(a) The bending moment at every section is=%d Nm\n\n',M)

mfprintf(res2,'(b) Refer to figure 4.3[A. Hall; Schaum''s Outline on Machine Design]\n')
mfprintf(res2,'Tension occurs in upper fibres and compression in lower fibres.\n')
mfprintf(res2,'Maximum normal stress occurs at R=90mm and is compressive\n')
mfprintf(res2,'Location of maximum tensile stress is to be determined\n\n')

//Radii of curvature of fibres
ri=R- h/2
ro=R+ h/2
rn=h/ log(ro/ri)

//Distance between centre of gravity and neutral axis
e=R-rn
mfprintf(res2,'(c)For section R=90mm\n\tDistance between centre of gravity and neutral axis e=%0.6f m\n\n',e)

//Checking for maximum tensile stress at R=90 mm
Si=(M*0.01192)/(h*t*e*ri)
mfprintf(res2,'(d)For section with R=90mm, stess at inner fibre\n\t')
mfprintf(res2,'Si=M*hi/ A*e*ri\n')
mfprintf(res2,'\t=%0.2f MN/m^2 compression\n',Si* 10^-6)
s=Si/2
So=(M*0.0131)/(h*t*e*ro)
mfprintf(res2,'Stess at outer fibre\n\t')
mfprintf(res2,'So=M*ho/ A*e*ro\n')
mfprintf(res2,'\t=%0.2f MN/m^2 tension\n\n',So* 10^-6)

//Checking for maximum tensile stress at R=115 mm
R=0.115
ri=R- h/2
ro=R+ h/2
rn=h/ log(ro/ri)
e=R-rn
e=ceil(e* 10^4)
e=e* 10^-4
mfprintf(res2,'For section R=115mm\n\tDistance between centre of gravity and neutral axis e=%0.4f m\n\n',e)
Si=(M*0.012)/(h*t*e*ri)
mfprintf(res2,'(e)For section with R=115mm, stess at inner fibre\n\t')
mfprintf(res2,'Si=M*hi/ A*e*ri\n')
mfprintf(res2,'\t=%0.2f MN/m^2 tension\n',Si* 10^-6)
So=(M*0.013)/(h*t*e*ro)
mfprintf(res2,'Stess at outer fibre\n\t')
mfprintf(res2,'So=M*ho/ A*e*ro\n')
mfprintf(res2,'\t=%0.2f MN/m^2 compression\n\n',So* 10^-6)

//Maximum stresses
mfprintf(res2,'(f) Maximum tension occurs at inner fibre of section R=115mm\n')
mfprintf(res2,'Maximum compression occurs at inner fibre of section R=90mm\n')
mfprintf(res2,'Maximum shear stress=half of greatest difference between any two extremes=%0.1f MN/m^2\n',s* 10^-6)

mclose(res2)
editor(TMPDIR+'2_offset_bar.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------