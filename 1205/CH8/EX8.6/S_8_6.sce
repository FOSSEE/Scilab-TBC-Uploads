clc;

d1=100;//mm, diameter of pulley
d2=50;//mm, diameter of shaft
us=0.20;// Coeffiecient of static friction between shaft and pully
W=2.5;//kN , load
W=W*1000;//N, conversio into N
//Vertical Force required to raise load
rf=d2/2*us;//mm, Perpendicular distance from the center Of pully to line of action 
//summing moment about B
P=W*(d1/2+rf)/(d1/2-rf);//N , downward Force required to raise load
printf("Force required to raise load is %.0f N in downward direction\n",P);

//Vertcal Force required to hold load

//summing moment about C
P=W*(d1/2-rf)/(d1/2+rf);//N , downward Force required to hold load
printf("Force required to hold load is %.0f N in downward direction\n",P);

//Horizontal force P to start raising the load
OE=rf;//mm,
OD=sqrt((d1/2)^2+(d1/2)^2);//mm, pythagorus theorm
theta=asin(OE/OD);//rad, 

// from force triangle
P=W/tan(%pi/4-theta);//N, Horizontal force P to start raising the load
printf("Horizontal force P required to start raising the load is %.0f N\n",P);

printf("Answer for this example shows variatio , but actual solving gives answers executed by programme\n");
