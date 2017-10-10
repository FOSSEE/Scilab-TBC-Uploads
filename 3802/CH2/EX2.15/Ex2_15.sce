//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_15.sce.

clc;
clear;
R_aB=5;
R_AB=6;
R_BC=6;
R_CD=5;
R_AE=25;
R_ED=10;
R_DA=5;
R_EC=50;

//For triangle AED 
R_OA=(R_AE*R_DA)/(R_AE+R_ED+R_DA);
R_OD=(R_ED*R_DA)/(R_AE+R_ED+R_DA);
R_OE=(R_AE*R_ED)/(R_AE+R_ED+R_DA);

//For triangle OCD
R_OC=R_OE+R_EC;
R_OdashO=(R_OC*R_OD)/(R_OC+R_OD+R_CD);
R_OdashD=(R_CD*R_OD)/(R_OC+R_OD+R_CD);
R_OdashC=(R_OC*R_CD)/(R_OC+R_OD+R_CD);

R_OB=R_OA+R_AB;
R_BOdash=((R_OB+R_OdashO)*(R_BC+(R_OdashC)))/(R_OB+R_OdashO+R_BC+R_OdashC);
Rab=(R_aB+(R_BOdash)+(R_OdashD));
printf("\n  The driving point resistance=%2.1f ohms \n",Rab)

