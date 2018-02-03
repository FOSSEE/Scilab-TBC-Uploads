//Analysing the truss
//Refer fig. 4.10(a)
//inclined members make an angle theta with the horizontal
theta=atand(4/3)  //Degree
//Joint E
//Refer fig. 4.10 (c)
//applying equilibrium conditions
FED=20/sind(theta)  //kN  (Tension)
FEF=25*cosd(theta)  //kN  (Compression)
//Refer fig 4.10 (b)
//Taking moment about A
RC=20*6/8  //kN
VA=20  //kN
HA=RC  //kN
//Joint A
//Refer fig.4.10 (d)
//applying equilibrium conditions
FAB=VA  //kN  (Compression)
FAF=HA  //kN  (Compression)
//Joint C
//Refer fig. 4.10 (E)
FCB=RC/cosd(theta)  //kN  (Compression)
FCD=FCB*sind(theta)  //kN  (Tension)
//Joint B
//Refer fig. 4.10 (f)
FBF=(FBC*sind(theta)-FAB)/sind(theta)  //kN
FBD=0+25*cosd(theta)  //kN  (Tension)
//Joint F
//Refer Fig. 4.10(g)
FFD=0  
FBF=0
printf("FED=%.2f kN  (Tension)\nFEF=%.2f kN  (Compression)\nRC=%.2f kN\nVA=%.2f kN\nHA=%.2f kN\nFAB=%.2f kN  (Compression)\nFAF=%.2f kN  (Compression)\nFCB=%.2f kN  (Compression)\nFCD=%.2f kN  (Tension)\nFBF=%.2f kN\nFBD=%.2f kN  (Tension)\nFFD=%.2f kN\nFBF=%.2f kN",FED,FEF,RC,VA,HA,FAB,FAF,FCB,FCD,FBF,FBD,FFD,FBF)
