clear;
clc;
printf("\n Example 10.2");

//If x1, x2, x3 are the solute: solvent ratios in thickeners 1, 2, and 3, respectively, the quantities of CaCO3. NaOH, and water in each of the streams can be calculated for every 100 kg of calcium carbonate

//Since the final underflow must contain only 1 per cent of NaOH
function[f]=F(x)
    f(1)=(300*x(3))/100 - 0.01;
    f(2)=300*(x(2)-x(3))/x(4) - x(3);        //Wf = x(4)
    f(3)=300*(x(1)-x(3))/x(4) - x(2);
    f(4)=(80-300*x(3))/(600+x(4))-x(1);
    funcprot(0);
endfunction
//An initial guess
x = [0.1 0.1 0.1 0.1];
y = fsolve(x,F);
printf("\n x1 = %f  x2 = %f  x3 = %f Wf = %f",y(1),y(2),y(3),y(4));

printf("\n Thus the amount of water required for washing 100 kg CaCO3 is %f kg",y(4));
printf("\n The solution fed to reactor contains 0.25 kg/s Na2CO3.This isequivalent to 0.236 kg/s CaCO3,and hence the actual water required is %.2f kg/sec",y(4)*0.236/100);



























