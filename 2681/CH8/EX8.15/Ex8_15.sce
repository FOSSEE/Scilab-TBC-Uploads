//power gain of paraboloid reflector
//given
clc
lemda=1//as value of lemda do not effect the expression
for(lemda!=0)
Da=6*lemda
gp=6.4*(Da/lemda)^2
gp_decibles=10*log10(gp)//changing to decibles
end
gp_decibles=round(gp_decibles*100)/100///rounding off decimals
disp(gp_decibles,'the power gain of paraboloid reflector in decibles')//decibles
