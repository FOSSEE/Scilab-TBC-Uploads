clc;
clear;
//Example 2.16,Page no 2.36
d1=40;   // Diameter of pipe[mm]
r1=(d1/2)/1000  //Outside radius in [m]
t1=20;    //Insulation 1 thickness in [mm]
t1=t1/1000    //[m]
t2=t1;         //Insulation 2 thickness in[m]
r2=r1+t1;     //radius after 1st insulation  in [m]
r3=r2+t2;     //Radius after second insulation in [m]

//Since Scilab does not handles symbolic constants,we will assume some values:
//(1)
printf("Let the layer M-1 be nearer to the surface")
L=1;         //[m]
T1=10;       //Temperature of inner surface of pipe [K]
T2=5;        //Temperature of outer surface of insulation [K]
k=1;         //Thermal conductivity
k1=k;        //For M-1 material
k2=3*k;      //For material M-2
Q1=(T1-T2)/(log(r2/r1)/(2*%pi*L*k1)+log(r3/r2)/(2*%pi*L*k2))

//(2)
printf("Let the layer of material M-2 be nearer to the surface");
Q2=(T1-T2)/(log(r2/r1)/(2*%pi*L*k2)+log(r3/r2)/(2*%pi*L*k1))
printf("Q1=%f and Q2= %f \n For dummy variables unity...\nFor any value of k,T1 and T2,Q1 is always less than Q2",Q1,Q2);
printf("\n So,M-1 near the surface is advisable(i.e Arrangement one will result i ,ess heat loss\n)");
per_red=(Q2-Q1)*100/Q2
printf("Percent reduction in heat loss is %f percent",per_red)
printf("\nNOTE:Slight variation in answers due to less precise calculation in book.If performed manually,this answer stands to be correct")
