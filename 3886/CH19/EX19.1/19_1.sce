//Automobile moving on road
//refer fig. 19.7
v=13.889  //m/sec
//case (1)-When vehicle is at A
CFF1=(25*13.889^2)/(9.81*80)  //kN
//Vertical reaction
R1=25-6.145  //kN
//case (2)-When automobile is at B
CFF2=(25*13.889^2)/(9.81*120)  //kN
R2=25+4.097  //kN
//case (3)-On level track at C
R3=25  //kN
printf("\nWhen vehicle is at A, vertical reaction=%.3f kN\nWhen automobile is at B, vertical reaction=%.3f kN\nOn level track at C, vertical reaction=%.3f kN ",R1,R2,R3)
