clear;
clc;
printf("\n Example 15.2");
printf("\n For barium sulphate");

function[x] = increase_barium(d)
    y = exp((2*233*0.13)/(2*8314*298*4500*d));
    x = y-1;
    funcprot(0);
endfunction
i=1;
d = [0.5 0.05 0.005];
while(i<=3)
    printf("\n Increase in solubility for barium sulphate fpr particle size %f um = %f per cent",d(i)*2,(increase_barium(d(i)*10^(-6))*100));
    i = i+1;
end

printf("\n For Sucrose");
function[a] = increase_sucrose(d1)
    b = exp((2*342*0.01)/(1*8314*298*1590*d1));
    a = b-1;
    funcprot(0);
endfunction
j=1;
while(j<=3)
    printf("\n Increase in solubility for barium sulphate fpr particle size %f um = %f per cent",d(j)*2,(increase_sucrose(d(j)*10^(-6))*100));
    j = j+1;
end


    
    
