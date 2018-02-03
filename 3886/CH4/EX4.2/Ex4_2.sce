//finding forces in members of truss
//Refer fig. 4.9
//Find support reactions
//applying equilibrium conditions
//Taking moment about A
RD=(40*1+60*2+50*3)/4  //kN
RA=150-RD  //kN
//Consider equilibrium of joint A
FAB=RA/sind(60)  //kN  (Compression)
FAE=FAB*cosd(60)  //kN  (Tension)
//Joint D
FDC=RD/sind(60)  //kN  (Compression)
FDE=FDC*cosd(60)  //kN  (Tension)
//Joint B (Refer Fig. 4.9 (d)
FBE=((FAB*sind(60))-40)/sind(60)  //kN  (Tension)
FBC=FAB*cosd(60)+FBE*cosd(60)  //kN  (Compression)
//Joint C (Refer fig. 4.9 (e))
FCE=(FDC*sind(60)-50)/sind(60)  //kN  (Tension)
//Refer fig. 4.9 (e),(f)
printf("RD=%.2f kN\nRA=%.2f kN\nFAB=%.2f kN  (Compression)\nFAE=%.2f kN  (Tension)\nFDC=%.2f kN  (Compression)\nFDE=%.2f kN  (Tension)\nFBE=%.2f kN  (Tension)\nFBC=%.2f kN  (Compression)\nFCE=%.2f kN  (Tension)",RD,RA,FAB,FAE,FDC,FDE,FBE,FBC,FCE)



