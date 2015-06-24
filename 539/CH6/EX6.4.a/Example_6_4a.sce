//Ductility

clear;
clc;

printf("\tExample 6.4\n");

di=12.8;     //Initial dia in mm
df=10.7;     //Final dia  in mm

printf("\n\tPart A");

//Ductility in terms of Reduction Area 
RA = ((di^2-df^2)/di^2)*100;
printf("\npercent reduction in area is %d %%\n",RA);

//End