//Analyse truss
//Refer fig. 4.12 (a)
//All triangles are equilateral 
//applying equilibrium conditions At
//Joint G
FGF=20/sind(60)  //kN  (Tension)
FGE=FGF*cosd(60)  //kN  (Compression)
//Joint F
FFE=FGF  //kN  (Compression)
FFD=FGF*cosd(60)+FFE*cosd(60)-10  //kN  (Tension)
//Consider eqiulibrium of entire truss
RE=(-10*3*sind(60)+40*3*cosd(60)+30*(3+3*cosd(60))+20*9)/6  //kN
VA=(40+30+20)-58.17  //kN
HA=10  //kN
//Joint A
FAB=31.83/sind(60)  //kN  (Compression)
FAC=36.75*cosd(60)-10  //kN  (Tension)
//Joint B
FBC=(40-FAB*sind(60))/sind(60)  //kN  (Compression)
FBD=36.75*cosd(60)-9.44*cosd(60)  //kN  (Compression)
//Joint C
FCD=FBC  //kN  (Tension)
FCE=9.44*cosd(60)+9.44*cosd(60)-8.38  //kN  (Compression)
//Joint D
FDE=(30+FCD*sind(60))/sind(60)  //kN  (Compression)
printf("\nRequired Forces are:-\nFGF=%.2f kN  (Tension)\nFGE=%.2f kN  (Compression)\nFFE=%.2f kN  (Compression)\nFFD=%.2f kN  (Tension)\nRE=%.2f kN\nVA=%.2f kN\nHA=%.2f kN\nFAB=%.2f kN  (Compression)\nFAC=%.2f  (Tension)\nFBC=%.2f kN  (Compression)\nFBD=%.2f kN  (Compression)\nFCD=%.2f kN  (Tension)\nFCE=%.2f kN  (Compression)\nFDE=%.2f kN  (Compression)",FGF,FGE,FFE,FFD,RE,VA,HA,FAB,FAC,FBC,FBD,FCD,FCE,FDE)


