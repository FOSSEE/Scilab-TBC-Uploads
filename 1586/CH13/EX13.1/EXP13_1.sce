clc;funcprot(0);//EXAMPLE 13.1
// Initialisation of Variables
%Fe=6.67;......//Carbon percentage in Cementite by weight
%G=0.77;.......//Carbon percentage in eutectoid composition  in steel by weight
%A=0.0218;......//Carbon percentage in Ferrite
%Fe3C=16;....//Percentage of alpha ferrite in steel
%P=95;......//Percentage of Pearlite in Steel
//CALCULATIONS
X1=((%Fe3C/100)*(%Fe-%A))+%A;.....//Carbon content present in Steel
X2=%Fe-((%P/100)*(%Fe-%G));.....//Carbon content  present in Steel
disp(X1,"Carbon content present in Steel:")
disp(X2,"Carbon content present in Steel:")
printf("The carbon content is on the order of 1.065 to 1.086 percent, consistent with a 10110 steel")
