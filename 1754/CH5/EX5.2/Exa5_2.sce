//Exa 5.2
clc;
clear;
close;
//Given data :
A=1000;//gainWithoutFeedback(unitless)
//Part (i) : 
disp("At normal collector supply :");
disp("with feedback gain reduces by a factor 0.40");
Af=A-A*0.40;//gainWithFeedback(unitless)
disp(Af,"At normal collector supply, Gain with feedback : ");
//Formula : Af=A/(1+A*Beta)
Beta=(A/Af-1)/A;//feedback factor (unitless)
disp("At reduced power supply :");
Adash=800;//gainWithoutFeedback(unitless)
Af_dash=Adash/(1+Adash*Beta)
disp(round(Af_dash),"At Reduced collector supply, Gain with feedback : ");
//Part (ii)
Reduction=((A-Adash)/A)*100;//% reduction without feedback
disp(Reduction,"percentage reduction in gain without feedback(%) :");
Reduction1=((Af-Af_dash)/Af)*100;//% reduction without feedback
disp(round(Reduction1),"percentage reduction in gain with feedback(%) :");
//Note : answer of Af is wrong in the book.
