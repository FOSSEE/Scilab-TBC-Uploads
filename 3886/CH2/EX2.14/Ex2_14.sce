// Finding magnitude of F
//When F is applied at point B,refer fig 2.18(a)and(b)
//From triangle AOC
OC=300-150
AO=300
alpha=acosd(OC/AO)  //degree
//from triangle AOB using geometry we get angle OBA=30 degree
//Resolving the forces we get
R=2000/cosd(30)  //N
F=R*sind(30)  //N
printf("Least force through point B is F=%.1f N",F)
//Least force required through the centre of roller
//Assume that F makes an angle theta with the horizontal
//Refer fig. 2.19 (a) and (b)
//Resolving the forces we get
//F*cosd(theta)=R*sind(60)...(1)
//F*sind(theta)+R*cosd(60)=W...(2)
//Solving (1) and (2) we get
//sind(theta)+cotd(60)*cosd(theta)=W/F
//For obtaining maximum value of W/F we differentiate W/F w.r.t. theta and we get
theta=acotd(cotd(60))  //degree
//Least value of F is observed when it is at right angle to reaction R
Fmin=2000*sind(60)  //N
printf("\nLeast force through the centre of roller is Fmin=%.0f N",Fmin)
 
