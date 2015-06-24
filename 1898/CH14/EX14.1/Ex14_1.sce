clear all; clc;

disp("Scilab Code Ex 14.1 : ")

//Given:
sigma_y = 310; //N/mm^2
db =18; //mm
rb = db/2;
Ab = %pi*(rb^2);
E = 210*10^3; //N/mm^2
da1 = 20; //mm
ra1 = da1/2;
Aa1 = %pi*(ra1^2);
La1 = 50;//mm
La2= 6; //mm
da2 =18; //mm
ra2 = da2/2;
Aa2 = %pi*(ra2^2);
Lb = 56; //mm


//Bolt A:
P_max = sigma_y*Ab;
Uia = (P_max^2/(2*E))*(La1/Aa1 + La2/Aa2); //Ui = (N^2L)/(2AE)
Uia = Uia/1000;

//Bolt B:
Uib = (P_max^2/(2*E))*(Lb/Ab);
Uib = Uib/1000;

//Display:
    printf('\n\nThe greatest amount of strain energy absorbed by bolt A    = %1.3f J',Uia);
    printf('\nThe greatest amount of strain energy absorbed by bolt B    = %1.3f J',Uib);
    
 //-------------------------------------------------------------------------END---------------------------------------------------------------------------------
