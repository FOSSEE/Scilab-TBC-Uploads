//Determine The Forces in the member
//Using symmetry
RA=70/2  //kN
RB=RA  //kN
//Consider fig.4.13 (b)
//Taking moment about G
FFH=(35*12-10*10-10*6-10*2)/(4*sind(60))  //kN  (Compression) 
FGH=(35-10-10-10)/sind(60)  //kN  (Compression)
FGI=69.28+5.77*cosd(60)  //kN  (Tension)
printf("The required values are:-\nFFH=%.2d kN  (Compressive)\nFGH=%.2d kN  (Compressive)\nFGI=%.2d kN  (Tension)",FFH,FGH,FGI)

