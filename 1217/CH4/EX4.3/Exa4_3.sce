//Exa 4.3
clc;
clear;
close;
// given data
disp("The output expression consist of two parts, one when V1 acting alone i.e. due to non inverting amplifier, thus constant A becomes the gain for non inverting configuration and second when V2 acting alone i.e. due to inverting amplifier, thus constant B becomes the gain for inverting configuration ");
// case (i) when V1 acting alone V2=0;
disp("case (i) when V1 acting alone V2=0 and the output is given as");
disp("Vo1=(1+100/10)*Va");
disp("Va=99*V1/(11+99)");
disp("Vo1=(110/10)*(99/110)*V1=9.9V1");
disp("Thus the gain A=Vo1/V1=9.9");
// case (ii) when V2 acting alone V1=0;
disp("case (ii) when V2 acting alone V1=0 and the output is given as");
disp("Vo2=(-100/10)*V2");
disp("Thus the gain B=Vo2/V2=-10");