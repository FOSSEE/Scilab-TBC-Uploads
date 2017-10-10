clc;

h=500;//N, horizontal force
W=1.5;//kN, weight of block
W=W*1000;//N. conversion to N
us=0.25;// Coeffiecient of static friction
uk=0.20;//Co=efficient of kinetic friction

//Applying sumFx =0 , we get
F=-4/5*h+3/5*W;//N, Force along plane

//Applying sumFy=0, we get
N=4/5*W+3/5*h;//N, Normal force to the plane

printf("Force F required to maintain the equillibrium is thus %.0f N, up and to right\n",F);

// Maximum friction force
Fm=us*N;//N,Maximum friction force
printf("Maximum friction force is %.2f N is less than that of required to maintain equillibrium that is %.2f N \n So, equillibrium will nat maintain and block wil move down\n",Fm,F);
// Actual value of friction force
Fk=uk*N;//N, Actual value of friction force
printf("Actual value of friction force is %.2f N directed up and to the right\n",Fk);
