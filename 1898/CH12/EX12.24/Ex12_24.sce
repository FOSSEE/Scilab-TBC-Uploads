clear all; clc;

disp("Scilab Code Ex 12.24 : ")

//Given:
l_ab = 4; //m
l = l_ab/2;
w = 9; //kN/m

//Compatibility Equations:

EI_thetaB = (w*l_ab^3)/(48); //thetaB = (wL^3)/(48EI)
EI_nuB = (7*w*l_ab^4)/(384); //nuB = (7wl^4)/(384EI)

//Only redundant By applied:
EI_thetaB_by_By = (l_ab^2)/(2); //thetaB' = (PL^2)/(2EI)
EI_nuB_by_By = (l_ab^3)/(3); //nuB' = (PL^3)/(3EI)

//Only redundant Mb is applied:
EI_thetaB_by_Mb = l_ab; //thetaB'' = (ML)/(EI)
EI_nuB_by_Mb = (l_ab^2)/(2); //nuB'' = (ML^2)/(2EI)

//Solving for By and Mb using matrices:

A = [EI_thetaB_by_By EI_thetaB_by_Mb; EI_nuB_by_By EI_nuB_by_Mb ];
b = [-EI_thetaB; -EI_nuB ] ;
moments = A\b;

By = moments(1);
Mb = moments(2);

//Display:

printf('\n\nThe vertical force at B for the beam    = %1.3f kN',By);
printf('\nThe moment at B for the beam            = %1.2f kNm',Mb);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------




