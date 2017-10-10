//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_22.sce.

clc;
clear;
V=2.5;                //potential difference of the plates in kv
x=0.25;               //distance between two parallel plates in cm
x1=0.02;              //airgap in between the parallel plates in cm
x2=0.23;             //thickness of fibre sheet in the gap in cm
epsilon_r=5;

//As the eletric displacement is perpendicular to the boundary
//D=D1=D2;  ,   D1=epsilon_not*E1;         ,   D2=epsilon_not*epsilon_r*E2;
//from this E1=5*E2;

//V=V1+V2;       V1=x1*E1;        V2=x2*E2;
//from this we can find the equation of E2

E2=V/((x1*epsilon_r)+(x2));
E1=5*E2;

printf("\n Electric field strength in air , E1=%2.2f kV/cm \n",E1)
printf("\n Electric field strength in the fibre , E2=%1.3f kV/cm \n",E2)

E=30;          //Dielectric strength of air in kV/cm
if (E1>E) 
     printf("\n The air will break.")
else
    printf("\n The air will not break.")
end
