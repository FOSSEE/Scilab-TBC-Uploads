clc;
//page 432
//Given
T2=600;//lb, Tension from side 2
us=0.25;// Coeffiecient of static friction between pulley and belt
bta=(2*%pi)/3;//Co=efficient of kinetic friction between pulley and belt
r1=8//in in
//Pulley B

T1=T2/(exp(us*bta))//N, Tension from side 1
//disp(T1)

//Pulley A
//Aumming moment about A
MA=(T2*r1)-(T1*r1);//lb-ft, Couple MA applied to pulley which is equal and opposite to torque 

printf("The largest torque which can be exerted by belt on pulley A is MA= %0.0f lb-in\n",MA);

