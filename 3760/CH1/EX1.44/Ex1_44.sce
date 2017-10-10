clc;
P=100000; // VA rating of two winding transformer
E1=2000; // rated voltage of h v side
E2=200; // rated voltage of l v side
l=2.5; // percentage of loss in two winding transformer
vr=3; //  percentage of voltage regulation in two winding transformer
z=4; //  percentage of leakage impedance in two winding transformer
ih=P/E1; // full load current of h v side
il=P/E2; // full load current of l v side
V1=E1; // rated voltage on l v side of autotransformer
V2=E1+E2; // rated voltage on h v side of autotransformer
Il=il+ih; // rated current on l v side of autotransformer
printf('Rated voltage on l v and h v side of autotransformer are %f v and %f v respectively\n,',V1,V2);
printf('Rated current on h v and l v side of autotransformer are %f A and %f A respectively\n,',il,Il);
k=E1/V2; // turns ratio for auto transformer
K=((1/(1-k))*P)/1000; 
printf('Rated KVA of autotransformer is %f KVA\n',K);
pl=(1-k)*l; //percent full load losses in autotransformer
n=100-pl; 
printf('Efficiency of auto transformer is %f percent\n',n);
Z=(1-k)*z;
printf('Percentage impedance as an auto transformer is %f \n',Z);
VR=(1-k)*vr;
printf('percentage voltage regulation as an auto transformer is %f \n',VR);
Is=(1/(1-k))*(100/z); // short circuit p u current
Ish=(Is*il)/1000; 
printf('Short circuit of auto transformer on h v side is %f KA \n',Ish);
Isl=(Is*Il)/1000; 
printf('Short circuit of auto transformer on l v side is %f KA \n',Isl);

 
