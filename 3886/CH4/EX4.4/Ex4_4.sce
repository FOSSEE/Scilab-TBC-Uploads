//Finding forces in all members
//Refer fig. 4.11(a)
theta1=atand(4/6)  //Degree
theta2=atand(8/6)  //Degree
theta3=atand(4/3)  //Degree
//Joint H
FHG=20/sind(53.13)  //kN  (Compression)
FHF=25*cosd(53.13)  //kN  (Tension)
//Taking moment about A
RG=(20*9+12*6)/6  //kN
VA=32-42  //kN  (Downwards)
HA=0
//Joint A
//applying equilibrium conditions
FAC=10/sind(33.69)  //kN  (Compression)
FAB=18.03*cosd(33.69)  //kN  (Tension)
//Joint B
FBC=0
FCE=FAC  //kN  (Compression)
//Joint D
FDE=0
FDF=FBD  //kN  (Tension)
//Joint E
FEF=0
FEG=FCE  //kN  (Compression)
//Joint F
FAG=12  //kN  (Compression)
printf("Required values are:-\nFHG=%.2f kN  (Compression)\nFHF=%.2f kN  (Tension)\nRG=%.2f kN\nVA=%.2f kN  (Downwards)\nHA=%.2f kN\nFAC=%.2f kN  (Compression)\nFAB=%.2f kN  (Tension)\nFBC=%.2f kN\nFCE=%.2f kN  (Compression)\nFDE=%.2f kN\nFDF=%.2f kN  (Tension)\nFEF=%.2f kN\nFEG=%.2f kN  (Compression)\nFAG=%.2f kN  (Compression)",FHG,FHF,RG,-VA,HA,FAC,FAB,FBC,FCE,FDE,FDF,FEF,FEG,FAG)

