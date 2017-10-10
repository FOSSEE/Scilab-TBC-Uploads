clc;funcprot(0);//EXAMPLE 14.6
// Initialisation of Variables
%A=10;.......//Percentage of Alloy in Cu-Al alloy
%M=9.4;.......//Percentage of Martensite present in  Cu-Al alloy 
%Fe=15.6;......//Percentage of Ferrite present in  Cu-Al alloy 
//CALCULATIONS
%a=((%A-%M)/(%Fe-%M))*100;....//Percentage of Austenite forms at 400 degree celsius in  Cu-Al alloy
disp(%a,"Percentage of Austenite forms at 400 degree celsius in  Cu-Al alloy")
