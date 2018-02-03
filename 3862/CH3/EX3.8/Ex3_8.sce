clear
//

//Each load is 10 kN and all triangles are equilateral with sides 4 m.

//variable declaration

PB=10.0
PD=PB
PF=PD
AB=4.0
BC=AB
AC=BC
BD=BC
CD=BC
DE=CD
CE=CD
DF=DE
EF=DE
EG=DE
FG=EF
//Take section (A)–(A), which cuts the members FH, GH and GI and separates the truss into two parts. 
AG=AC+CE+EG
BG=CE+EG+AC/2
DG=EG+CE/2
FG1=EG/2
RA=PB*7/2
RO=RA
theta=60.0*%pi/180
//moment at point G
FFH=(RA*AG-PB*BG-PD*DG-PF*FG1)/(FG*sin(theta))
printf("\n FFH= %0.4f KN (Comp.)",FFH)

//sum of all vertical forces & sum of all horizotal forces is zero

FGH=(RA-PB-PD-PF)/(sin(theta))
printf("\n FGH= %0.4f KN (Comp.)",FGH)

FGI=FFH+FGH*cos(theta)
printf("\n FGI= %0.4f KN  (Tensile)",FGI)
