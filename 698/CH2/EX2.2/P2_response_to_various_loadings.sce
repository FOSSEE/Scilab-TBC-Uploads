clc
//Example 2.2
//Response of cantilever to various uniaxial loadings
//------------------------------------------------------------------------------

//Given Data:
//Dimensions
d=0.05//m
L=0.25//m
A=(%pi/4)* d^2
I=(%pi/64)* d^4
J=(%pi/32)* d^4
P=15000//N
F=3000//N
M=F*L
T=1000//Nm
r=d/2

//------------------------------------------------------------------------------
//Printing result file to .txt
res2=mopen(TMPDIR+'2_response_to_various_loadings.txt','wt')
mfprintf(res2,"\t\tNOTE: Sy=0 in all cases\n")
mfprintf(res2,"\n\tSn_max=(Sx/2)+sqrt(((Sx/2)^2)+(Txy^2))")
mfprintf(res2,"\n\tSn_min=(Sx/2)-sqrt(((Sx/2)^2)+(Txy^2))")
mfprintf(res2,"\n\tT_max=[Sn_max+Sn_min]/2\n\n")

//------------------------------------------------------------------------------
//Function to find maximun and minimum normal stres and shear stress

funcprot (0)

function [Sn_max,Sn_min,T_max]=stresses(Sx,Txy)
    Sn_max=(Sx/2)+(sqrt(((Sx/2)^2)+(Txy^2)))
    Sn_min=(Sx/2)-(sqrt(((Sx/2)^2)+(Txy^2)))
    T_max=(Sn_max-Sn_min)/2
    
    mfprintf(res2,"  Sx=%0.2f MN/m^2\n",Sx*(10^-6))
    mfprintf(res2,"  Txy=%0.2f MN/m^2\n",Txy*(10^-6))
    
    mfprintf(res2,"   Maximum normal stress=%0.2f MN/m^2\n",Sn_max*(10^-6))
    mfprintf(res2,"   Minimum normal stress=%0.2f MN/m^2\n",Sn_min*(10^-6))
    mfprintf(res2,"   Maximum shear stress=%0.2f MN/m^2\n\n",T_max*(10^-6))

endfunction
//------------------------------------------------------------------------------

//(a) AXIAL LOAD ONLY
mfprintf(res2,"\n(a) AXIAL LOAD ONLY\n")
Sx=P/A
Txy=0
[Sn_max,Sn_min,T_max]=stresses(Sx,Txy)
//------------------------------------------------------------------------------

//(b) BENDING ONLY
mfprintf(res2,"\n(b) BENDING ONLY\n")
mfprintf(res2,"  Section at which cantilever is fixed is critical\n")
SxA=(M*r)/I
Txy=0
mfprintf(res2,"  \t{Sx=(M*c)/I at topmost point of section at which cantilever is fixed}\n")
mfprintf(res2,"  At the topmost point of section at which cantilever is fixed,\n")
[Sn_maxA,Sn_minA,T_maxA]=stresses(SxA,Txy)

//------------------------------------------------------------------------------
SxB=-(M*r)/I
mfprintf(res2,"  \t{Sx=-(M*c)/I at topmost point of section at which cantilever is fixed}\n")
mfprintf(res2,"  At the bottom point of section at which cantilever is fixed,\n")
[Sn_maxB,Sn_minB,T_maxB]=stresses(SxB,Txy)
//------------------------------------------------------------------------------

//(c) TORSION ONLY
mfprintf(res2,"\n(c) TORSION ONLY\n")
mfprintf(res2,"  Here, the critical points occur along the outer surface of the member\n")
Sx=0
Txy=(T*r)/J
[Sn_max,Sn_min,T_max]=stresses(Sx,Txy)
//------------------------------------------------------------------------------

//(d) BENDING AND TORSION
mfprintf(res2,"\n(d) BENDING AND TORSION\n")
mfprintf(res2,"  Section at which cantilever is fixed is critical\n")
SxA=(M*r)/I // at topmost point of fixed section.
//Sx will be negative of above value at bottom point
Txy=(T*r)/J
mfprintf(res2,"  At the topmost point of section at which cantilever is fixed,\n")
[Sn_maxA,Sn_minA,T_maxA]=stresses(SxA,Txy)

mfprintf(res2,"  At the bottom point of section at which cantilever is fixed,\n")
SxB=-(M*r)/I
[Sn_maxB,Sn_minB,T_maxB]=stresses(SxB,Txy)
mfprintf(res2,"  The magnitudes of stresses at the two points are same.\n  The different signs of normal stresses indicate that while topmost fibres are in\n  tension,the bottom fibres are in compression.\n  The different signs of shear stress are of no consequence.\n\n")
//------------------------------------------------------------------------------

//(e) BENDING AND AXIAL LOAD
mfprintf(res2,"\n(e) BENDING AND AXIAL LOAD\n")
mfprintf(res2,"  Section at which cantilever is fixed is critical\n")
SxA=(P/A)+((M*r)/I) // at topmost point of fixed section.
Txy=0
mfprintf(res2,"  At the topmost point of section at which cantilever is fixed,\n")
[Sn_maxA,Sn_minA,T_maxA]=stresses(SxA,Txy)

mfprintf(res2,"  At the bottom point of section at which cantilever is fixed,\n")
SxB=(P/A)-(M*r)/I
[Sn_maxB,Sn_minB,T_maxB]=stresses(SxB,Txy)
//------------------------------------------------------------------------------

//(f) TORSION AND AXIAL LOAD
mfprintf(res2,"\n(f) TORSION AND AXIAL LOAD\n")
mfprintf(res2,"  Critical points are those on the outer surface of the cantilever\n")
Sx=(P/A)
Txy=(T*r)/J
mfprintf(res2,"  At the topmost point of section at which cantilever is fixed,\n")
[Sn_max,Sn_min,T_max]=stresses(Sx,Txy)
//------------------------------------------------------------------------------

//(g) BENDING, TORSION AND AXIAL LOAD
mfprintf(res2,"\n(g) BENDING, TORSION AND AXIAL LOAD\n")
mfprintf(res2,"  Section at which cantilever is fixed is critical\n")
SxA=(P/A)+((M*r)/I)
Txy=(T*r)/J
mfprintf(res2,"  At the topmost point of section at which cantilever is fixed,\n")
[Sn_maxA,Sn_minA,T_maxA]=stresses(SxA,Txy)

mfprintf(res2,"  At the bottom point of section at which cantilever is fixed,\n")
SxB=(P/A)-(M*r)/I
[Sn_maxB,Sn_minB,T_maxB]=stresses(SxB,Txy)

mclose(res2)
editor(TMPDIR+'2_response_to_various_loadings.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------