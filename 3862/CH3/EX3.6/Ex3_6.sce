clear
//

//variable declaration

AB=2.0    //length of beam AB,m
BD=2.0    //length of beam BD,m
DF=2.0    //length of beam DF,m
FH=3.0    //length of beam FH,m
FG=4.0    //length of beam FG,m
PF=12.0   //Vertical Load at point F,KN
PH=20.0   //Vertical Load at point H,KN

//mistake in book FG=4.0 , given FG=2.0 

theta1=atan(FG/(AB+BD+DF))
theta3=atan(FG/FH)
theta2=theta3

//sum of all vertical forces & sum of all horizotal forces is zero

//joint H

FHG=PH/sin(theta3)
printf("\n FHG= %0.0f KN (Comp.)",FHG)

FHF=FHG*cos(theta2)
printf("\n FHF= %0.0f KN (Tension)",FHF)

//taking moment at G

RA=PH*FH/(AB+BD+DF)

RG=RA+PF+PH

//joint A
//sum of all vertical forces & sum of all horizotal forces is zero

FAC=RA/sin(theta1)
printf("\n FAC= %0.4f KN (Comp.)",FAC)

FAB=FAC*cos(theta1)
printf("\n FAB= %0.0f KN (Tension)",FAB)
 
//joint B
//sum of all vertical forces & sum of all horizotal forces is zero

FBC=0
printf("\n FBC= %e  ",FBC)
FBA=FAB
FBD=FBA
printf("\n FBD=FBA %0.0f KN (Tension)",FBD)
 
//Joint C: Sum of Forces normal to AC = 0, gives FCD =0 since FBC = 0 ,sum of Forces parallel to CE =0 

FCA=FAC
FCE=FCA
printf("\n FCE=FCA %0.4f KN (Comp.)",FCE)


//joint D
//sum of all vertical forces & sum of all horizotal forces is zero

FDE=0
printf("\n FDE= %e  ",FDE)

FDB=FBD
FDF=FDB

printf("\n FDF=FDB %0.0f KN (Tension)",FDF)

//Joint E: sum of Forces normal to CG = 0, gives FEF = 0 and sum of Forces in the direction of  CG = 0, gives 

FEF=0


FEG=FCE

printf("\n FEG=FCE= %0.4f KN (Comp.)",FEG)

//Joint F:
//sum of all vertical forces & sum of all horizotal forces is zero

FFG=PF

printf("\n FFG= %0.0f KN (Tension)",FFG)
