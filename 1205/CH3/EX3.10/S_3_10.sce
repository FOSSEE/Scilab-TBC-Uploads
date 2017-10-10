clc;
BE=[75,-150,50];//mm position vector BE
F_B=700;//N*lambada_BE 
lambda_BE=BE/norm(BE);//mm,Unit vector
lambda_BE=lambda_BE/1000;//m, Converting into meter

// Using meters and newton
r_BA=[0.075,0,0.05];//m
r_CA=[0.075,0,-0.05];//m
r_DA=[0.1,-0.1,0];//m
F_B=[300,-600,200];//N
F_C=[707,0,-707];//N
F_D=[600,1039,0];//N

//R=sum( F)

R=F_B+F_C+F_D;//N , Resultant force
printf("Resultant force can be shown as R= (%.2f N)i +(%.2f N)j +(%.2f N)k \n",R(1),R(2),R(3));

// Componenets of moment M_BA along X,Y and Z direction respectively
M_BAx=det([r_BA(2),r_BA(3); F_B(2), F_B(3)]);//N.m
M_BAy=-det([r_BA(1),r_BA(3) ; F_B(1),F_B(3)]);//N.m
M_BAz=det([r_BA(1),r_BA(2) ;F_B(1), F_B(2)]);// N.m 
M_BA=[M_BAx,M_BAy,M_BAz];

// Componenets of moment M_CA along X,Y and Z direction respectively
M_CAx=det([r_CA(2),r_CA(3); F_C(2), F_C(3)]);//N.m
M_CAy=-det([r_CA(1),r_CA(3) ; F_C(1),F_C(3)]);//N.m
M_CAz=det([r_CA(1),r_CA(2) ;F_C(1), F_C(2)]);// N.m 
M_CA=[M_CAx,M_CAy,M_CAz];

// Componenets of moment M_DA along X,Y and Z direction respectively
M_DAx=det([r_DA(2),r_DA(3); F_D(2), F_D(3)]);//N.m
M_DAy=-det([r_DA(1),r_DA(3) ; F_D(1),F_D(3)]);//N.m
M_DAz=det([r_DA(1),r_DA(2) ;F_D(1), F_D(2)]);// N.m 
M_DA=[M_DAx,M_DAy,M_DAz];

//M_RA=sum(r*F)
M_RA=M_BA+M_CA+M_DA;//N.m
printf("Resultant moment can be shown as M_RA= (%.2f N)i +(%.2f N)j +(%.2f N)k ",M_RA(1),M_RA(2),M_RA(3));
