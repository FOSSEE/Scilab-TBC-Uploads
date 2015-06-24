//power gain of square horn antenna
//given
clc
lemda=1//as value of lemda do not affect the expression
for(lemda!=0)
    d=10*lemda // dimentions   
    W=10*lemda//dimentions
gp=4.5*W*d/lemda^2//power gain
gp_decibles=10*log10(gp)//changing to decibles
end
gp_decibles=round(gp_decibles*1000)/1000///rounding off decimals
disp(gp_decibles,'the  power gain  in decibles')//decibles
