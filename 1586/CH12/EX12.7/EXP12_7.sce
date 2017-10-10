clc;funcprot(0);//EXAMPLE 12.7
// Initialisation of Variables
%A=0.0218;......//Carbon percentage in  primary alpha in percent
%Fe=6.67;......//Carbon percentage in Cementite in percent
%G=0.77;.......//Carbon percentage in eutectoid composition at 727 degree celsius
%C=0.60;...//Carbon percentage in Pearlite in percent
//CALCULATIONS
%alpha=((%Fe-%C)/(%Fe-%A))*100;.......// Composition of Phase Ferrite in alloy 
%Ce=((%C-%A)/(%Fe-%A))*100;.......//Composition of Cementite in percent in alloy
%PF=((%G-%C)/(%G-%A))*100;......//Percentage of microconstituents Primary Ferrite in alloy
%P=((%C-%A)/(%G-%A))*100;.......//Percentage of microconstituents Pearlite in alloy
disp(%alpha,"Composition of Phase Ferrite in alloy :")
disp(%Ce,"Composition of Cementite in percent in alloy:")
disp(%PF,"Percentage of microconstituents Primary Ferrite in alloy:")
disp(%P,"Percentage of microconstituents Pearlite in alloy:")
