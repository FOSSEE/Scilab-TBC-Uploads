// Computation of pH for weak base of given molarity

clear;
clc;

printf("\t Example 15.10\n");

InitNH3=0.4;//Initial concentration of NH3 solution, M

//Let 'x' be the equilibrium concentration of the [OH-] and [NH4+] ions, M

Kb=1.8*10^-5;//ionisation constant of NH3, M
x=sqrt(Kb*InitNH3);//from the definition of ionisation constant Kb=[OH-]*[NH4+]/[NH3]=x*x/(InitNH3-x), which reduces to x*x/InitNH3, as x<<InitNH3 (approximation)

approx=x/InitNH3*100;//this is the percentage of approximation taken. if it is more than 5%, we will be having higher deviation from correct value

if(approx>5)
     x1=(-Kb+sqrt((Kb^2)-(-4*1*Kb*InitNH3)))/(2*1);
     x2=(-Kb-sqrt((Kb^2)-(-4*1*Kb*InitNH3)))/(2*1);

    if(x1>0)//as only one root is positive
         x=x1;
    else 
         x=x2;
    end
end;

pOH=-log10(x);//since x is the conc. of [H+] ions

pH=14-pOH;

printf("\t the pH of the NH3 solution is : %4.2f \n",pH);


//End
