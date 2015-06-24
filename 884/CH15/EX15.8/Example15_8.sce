// Computation of pH for weak acid

clear;
clc;

printf("\t Example 15.8\n");

InitHNO2=0.036;//Initial concentration of HNO2 solution, M

//Let 'x' be the equilibrium concentration of the [H+] and [NO2-] ions, M

Ka=4.5*10^-4;//ionisation constant of HNO2, M
x=sqrt(Ka*InitHNO2);//from the definition of ionisation constant Ka=[H+]*[NO2-]/[HNO2]=x*x/(0.036-x), which reduces to x*x/0.036, as x<<InitHNO2 (approximation)

approx=x/InitHNO2*100;//this is the percentage of approximation taken. if it is more than 5%, we will be having higher deviation from correct value

if(approx>5)
     x1=(-Ka+sqrt((Ka^2)-(-4*1*Ka*InitHNO2)))/(2*1);
     x2=(-Ka-sqrt((Ka^2)-(-4*1*Ka*InitHNO2)))/(2*1);

    if(x1>0)//as only one root is positive
         x=x1;
    else 
         x=x2;
    end
end;

pH=-log10(x);//since x is the conc. of [H+] ions

printf("\t the pH of the HNO2 solution is : %4.2f \n",pH);


//End
