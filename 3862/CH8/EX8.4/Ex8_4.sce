clear
//

//variable declaration

d=(20)                                       //Diameter ,mm
Loadatelasticlimit=(102)                  //Load at elastic limit,KN
P=80                                              //Load for extension of o.25mm , KN
delta=(0.25)                                 //extension in specimen of steel,mm
L=200                                             //gauge length of specimen of steel,mm
Finalextension=(56)                         //total extension at fracture,mm


A=(%pi*(d**2))/4                                 //Area**mm^2
printf("\n Area= %0.2f  mm^2",A)

Stressatelasticlimit=Loadatelasticlimit*1000/A    //Stress at elastic limit,N/mm^2
printf("\n Stress at elastic limit= %0.2f  N/mm^2",Stressatelasticlimit)

E=(P*1000/A)/(delta/L)                            //Young’s modulus ,N/mm^2
printf("\n Youngs modulus E= %0.2f  N/mm^22",E)

Percentageelongation=Finalextension*100/L       //percentage elongation,%
printf("\n Percentage elongation= %0.3f percentage",Percentageelongation )

Initialarea=(%pi*(d**2))/4

Finalarea=(%pi*(15**2))/4                     // total extension at fracture is 56 mm and diameter at neck is 15 mm.
Percentagereductionina=(Initialarea-Finalarea)*100/Initialarea

printf("\n Percentage reduction in area= %0.3f percentage",Percentagereductionina )

UltimateLoad=130                               //Maximum Load=130,kN
UltimateTensileStress=UltimateLoad*1000/A

printf("\n Ultimate Tensile Stress= %0.2f  N/mm^2",UltimateTensileStress)
