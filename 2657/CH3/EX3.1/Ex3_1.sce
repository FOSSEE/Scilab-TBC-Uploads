//Effect of variable specific heat on efficiency
clc,clear
//Given:
r=7 //Compression ratio
g=1.4 //Specific heat ratio(gamma)
cv=0.718 //(Assume)Specific heat at constant volume in kJ/kgK
dcv=1*cv/100 //Change in specific heat in kJ/kgK
//Solution:
R=cv*(g-1) //Specific gas constant in kJ/kgK
eta=round(100*(1-1/r^(g-1)))/100 //Efficiency when there is no change in specific heat
function [eta]=Otto(cv) //Defining efficiency as a function of specific heat
    eta=1-1/r^(R/cv)
endfunction
funcprot(0)
detaBydcv=derivative(Otto,cv) //Derivative of efficiency wrt to specific heat at initial value of specific heat
detaByeta=detaBydcv*dcv/eta //Change in efficiency wrt to initial value of efficiency
//Results:
printf("\n The percentage change in the efficiency of Otto cycle = %.3f percent",detaByeta*100)
if (detaByeta < 0) then
    disp("decrease")
end
