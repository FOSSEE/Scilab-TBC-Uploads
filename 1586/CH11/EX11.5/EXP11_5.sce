clc;funcprot(0);//EXAMPLE 11.3
// Initialisation of Variables
%Sn=61.9;......//Percentage of the Sn in the eutectic alloy in percent
%Pb=19;.......//Percentage of the Pb in the alpha phase in percent
%Sn2=30;....//Percentage of the Sn in the eutectic alloy in percent
//CALCULATIONS
%Pa=(%Sn-%Sn2)/(%Sn-%Pb);......//The amount of compositions of primary alpha in Pb-Sn
%L=(%Sn2-%Pb)/(%Sn-%Pb);......//The amount of composition of eutectic in Pb-Sn
disp(round(%Pa*100),"The amount of compositions of primary alpha in Pb-Sn:")
disp(round(%L*100),"The amount of composition of eutectic in Pb-Sn:")
