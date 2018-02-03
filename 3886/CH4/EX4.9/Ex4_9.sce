//Finding required forces
//Refer fig. 4.16 (a)
//Symmetry gives
RE=(15+30+30+30+15)/2  //kN
RA=RE  //kN
FAE=30  //kN
//After construction as shown in ref. fig
//Taking moment about C
FAE=(60*5-15*5-30*2.5)/5  //kN  (Tension)
//assumptions are made as shown in fig. 4.16 (b)
//Apply equilibrium conditions and solving equations
FFC=15/0.366  //kN  (Tension)
FBC=(0.866*40.98+15)/0.707  //kN  (Compression)
//Lets analyse Joint B
//Applying equilibrium conditions
FBF=30*cosd(45)  //kN  (Compression)
FAB=71.41+21.21  //kN  (Compression)
//Lets analyse Joint A
//Applying equilibrium conditions
FAF=(92.62*sind(45)-45)/sind(30)  //kN  (Tension)
printf("\nThe required forces are:-\nFAB=%.2d kN (Compression)\nFBC=%.2d kN (Compression)\nFBF=%.2d kN (Compression)\nFAF=%.2d kN (Tension)\nFFC=%.2d kN (Tension)\nFAE=%.2d kN (Tension)",FAB,FBC,FBF,FAF,FFC,FAE)
