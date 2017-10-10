clc;funcprot(0);//EXAMPLE 12.10
// Initialisation of Variables
%M=0.60;.......//Percentage of Carbon in Martensite at  750 degree celsius
%a=50;......//Percentage of Carbon in Austenite at 750 degree celsius
%c=0.02;......//Percentage of Carbon atoms in Steel 
X=(%a/100)*(%M-%c)+%c;......//The carbon content of Steel in percentage
disp(X,"The carbon content of hypoeutectoid  Steel in percentage:")
