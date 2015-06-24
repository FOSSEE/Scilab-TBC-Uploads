//Description of Diameter Reduction Procedure

clear;
clc;

printf("\tDesign Example 7.1\n");

di=6.4;  //Initial dia in mm
df=5.1;  //Final dia in mm

//Cold Work Computation
CW = ((di^2-df^2)/di^2)*100;

printf("\nCold work is %.1f %%\n",CW);

//From Figures 7.19a and 7.19c, 
//A yield strength of 410 MPa 
//And a ductility of 8% EL are attained from this deformation

printf("\nBut required ductility and yield strength is not matched at this cold work");
printf("\nHence required Cold work is 21.5 %%");

//x=poly([0],'x');
dmid = sqrt(df^2/(1-0.215));

printf("\nHence first draw to %.1fmm and then to %.1fmm\n",dmid,df);

//End