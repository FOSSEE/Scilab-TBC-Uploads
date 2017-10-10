clc;funcprot(0);//EXAMPLE 12.5
// Initialisation of Variables
%Fe=6.67;......//Carbon percentage in Cementite
%G=0.77;.......//Carbon percentage in  peralite in composition
%A=0.0218;......//Carbon percentage in Ferrite
//CALCULATIONS
%ferrite=((%Fe-%G)/(%Fe-%A))*100;........//Amount of ferrite present in peralite
%C=((%G-%A)/(%Fe-%A))*100;.......//Amount of Cementite present in peralite
disp(%ferrite,"Amount of ferrite present in peralite:")
disp(%C,"Amount of Cementite present in peralite:")
