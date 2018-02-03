clear
//

// Since all members are 3 m long, all triangles are equilateral and hence all inclined members are at 60° to horizontal. Joint-by-joint analysis is carried out . Then nature of the force is determined. 

//variable declaration

AB=3.0
BC=AB
AC=AB
BD=BC
CD=BD
CE=CD
DE=CE
EF=DE
DF=DE
EG=DE
FG=DF

theta=60.0*%pi/180 //angles BAC,BCA,DCE,DEC,FEG,FGE,°

PB=40.0    //Vertical Loading at point B,KN
PD=30.0    //Vertical Loading at point D,KN
HF=10.0    //Horizontal Loading at point F,KN
PG=20.0    //Vertical Loading at point G,KN

//joint G
//sum of all vertical forces & sum of all horizotal forces is zero

FGF=PG/sin(theta)

printf("\n FGF= %0.4f KN (Tension)",FGF)

FGE=FGF*cos(theta)

printf("\n FGE= %0.4f KN (Comp.)",FGE)

//joint F

//sum of all vertical forces & sum of all horizotal forces is zero

FFG=FGF

printf("\n FFG= %0.4f KN (Comp.)",FFG)

FFE=FGF
FFD=FGF*cos(theta)+FFE*cos(theta)-HF
printf("\n FFD= %0.4f KN (Tension)",FFD)

//Now, without finding reaction we cannot proceed. Hence, consider equilibrium of the entire truss
//moment about point A

RE=((PB*AC/2)-(HF*EF*sin(theta))+(PD*(AC+CE/2))+(PG*(AC+CE+EG)))/(AC+CE)

VA=PB+PD+PG-RE

HA=HF

//joint A
//sum of all vertical forces & sum of all horizotal forces is zero

FAB=VA/sin(theta)

printf("\n FAB= %0.4f KN (Comp.)",FAB)

FAC=FAB*cos(theta)-HF

printf("\n FAC= %0.4f KN (Tension)",FAC)


//joint B
//sum of all vertical forces & sum of all horizotal forces is zero

FBC=(PB-FAB*sin(theta))/sin(theta)

printf("\n FBC= %0.4f KN (Comp.)",FBC)

FBA=FAB
FBD=-FBC*cos(theta)+FBA*cos(theta)

printf("\n FBD= %0.4f KN (Comp.)",FBD)

//joint C
//sum of all vertical forces & sum of all horizotal forces is zero

FCD=FBC*sin(theta)/sin(theta)

printf("\n FCD= %0.4f KN (Tension)",FCD)

FCE=FCD*cos(theta)+FBC*cos(theta)-FAC

printf("\n FCE= %0.4f KN (Comp.)",FCE)

//joint D
//sum of all vertical forces & sum of all horizotal forces is zero

FDE=(PD+FCD*sin(theta))/sin(theta)

printf("\n FDE= %0.4f KN (Comp.)",FDE)
