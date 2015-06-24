clc;
//page 396

h=100;//lb, horizontal force
W=300;//lb, weight of block

us=0.2;// Coeffiecient of static friction
uk=0.20;//Co=efficient of kinetic friction

//Applying sumFx =0 , we get
F=h-3/5*W;//lb, Force along plane
F=-F

//Applying sumFy=0, we get
N=4/5*W//lb, Normal force to the plane


printf("Force F required to maintain the equillibrium is thus %.0f lb, up and to right\n",F);

// Maximum friction force
Fm=us*N;//lb,Maximum friction force
printf("\n Maximum friction force is %.2f lb is less than that of required to maintain equillibrium that is %.2f lb \n So, equillibrium will nat maintain and block wil move down\n",Fm,F);
// Actual value of friction force
Fk=(0.6*300)-(h)-(Fm);//lb, Actual value of friction force
printf("\nActual value of friction force is %.2f lb directed up and to the right\n",Fk);
