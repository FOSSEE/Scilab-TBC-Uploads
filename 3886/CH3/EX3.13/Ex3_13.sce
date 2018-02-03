//Reactions at supports C and D
//Refer fig.3.24(a),(b)&(c)
//applying equilibrium conditions for roller
R2=2000/cosd(30)  //N
//consider equilibrium of bar CD
//Taking moment about C
RD=((800*2.5*cosd(30))+(R2*2))/(5*cosd(30))  //N
VC=800+R2*cosd(30)-RD  //N
HC=R2*sind(30)  //N
printf("The reactions are:-\nRD=%.1f N\nHC=%.1f N",RD,HC)




 


