//Chapter-1, Example 1.14, Page 1.35
//=============================================================================
clc
clear

//INPUT DATA
Eb=225;//Back emf in V
IL=40;//Line current in A
Rsh=150;//Field  resistance in ohm
Ish=1.67;//Field current in A

//CALCULATIONS
V=(Ish*Rsh);//Terminal applied voltage in V
Ia=(IL-Ish);//Armature current in A
Ra=(V-Eb)/Ia;//Armature resistance in ohm
Ia=(V/Ra);//Maximum armature current in A

//OUTPUT
mprintf('i)Armature resistance is %3.2f ohm \nii)Armature current will be maximum at the moment of start up and it is %3.2f A',Ra,Ia)

//=================================END OF PROGRAM==============================
