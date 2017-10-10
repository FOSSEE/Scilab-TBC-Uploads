clc;funcprot(0);//EXAMPLE 11.2
// Initialisation of Variables
%Sn=2;......//Amount of Tin Dissolved in alpha solid solution 
%Sn2=10;.....//Amount of Tin Dissolved in alpha+beeta   solid solution at 0 degree celsius
m=100;........//Total mass of the Pb-Sn alloy in gm
Pbm=90;.......//Total mass of the Pb in Pb-Sn alloy in gm
//CALCULATIONS
B=((%Sn2-%Sn)/(m-%Sn))*100;.......//The amount of beeta Sn  that forms if a Pb-10% Sn alloy is cooled to 0 Degree celsius
B2=100-B;......//The amount of alpha Sn that forms if a Pb-10% Sn alloy is cooled to 0 Degree celsius
Sn1=(%Sn/100)*(B2);......//The mass of Sn in the alpha phase in g
Sn2=%Sn2-Sn1;.....//The mass of Sn in beeta phase in g
Pb1=B2-Sn1;....//The mass of Pb in the alpha phase in g
Pb2=Pbm-Pb1;.........//The mass of Pb in the beeta phase in g
disp(B,"c.Amount of beeta forms of Pb-Sn in gm:")
disp(Sn1,"d.The mass of Sn in the alpha phase in g:")
disp(Sn2,"d.The mass of Sn in beeta phase in g:")
disp(Pb1,"e.The mass of Pb in the alpha phase in g:")
disp(Pb2,"e.The mass of Pb in the beeta phase in g:")
