// Computation of concentration of all the species in solution of Oxalic acid

clear;
clc;

printf("\t Example 15.11\n");

InitC2H2O4=0.1;//Initial concentration of C2H2O4 solution, M

//Let 'x1' be the equilibrium concentration of the [H+] and [C2HO4-] ions, M

//First stage of ionisation

Kw=10^-14;//ionic product of water, M^2
Ka1=6.5*10^-2;//ionisation constant of C2H2O4, M
x=sqrt(Ka1*InitC2H2O4);//from the definition of ionisation constant Ka1=[H+]*[C2HO4-]/[C2H2O4]=x*x/(InitC2H2O4-x), which reduces to x*x/InitC2H2O4, as x<<InitC2H2O4 (approximation)

approx=x/InitC2H2O4*100;//this is the percentage of approximation taken. if it is more than 5%, we will be having higher deviation from correct value

if(approx>5)
     x1=(-Ka1+sqrt((Ka1^2)-(-4*1*Ka1*InitC2H2O4)))/(2*1);
     x2=(-Ka1-sqrt((Ka1^2)-(-4*1*Ka1*InitC2H2O4)))/(2*1);

    if(x1>0)//as only one root is positive
         x=x1;
    else 
         x=x2;
    end
end;
C2H2O4=InitC2H2O4-x;//equilibrium value
printf("\t the concentration of the C2H2O4 in the solution is : %4.3f M\n",C2H2O4);


//Second stage of ionisation

InitC2HO4=x;//concentration of C2HO4 from first stage of ionisation

Ka2=6.1*10^-5;//ionisation constant of C2HO4-, M

//Let 'y' be the concentration of the [C2HO4-] dissociated to form [H+] and [C2HO4-] ions, M
y=Ka2;//from the definition of ionisation constant Ka2=[H+]*[C2O4-2]/[C2HO4-]=(0.054+y)*y/(0.054-y), which reduces to y, as y<<InitC2HO4 (approximation)

approx=y/InitC2HO4*100;//this is the percentage of approximation taken. if it is more than 5%, we will be having higher deviation from correct value

if(approx>5)
     x1=(-Ka2+sqrt((Ka2^2)-(-4*1*Ka2*InitC2HO4)))/(2*1);
     x2=(-Ka2-sqrt((Ka2^2)-(-4*1*Ka2*InitC2HO4)))/(2*1);

    if(x1>0)//as only one root is positive
         y=x1;
    else 
         y=x2;
    end
end;

C2HO4=InitC2HO4-y;//from first and second stages of ionisation
H=x+y;//from first and second stages of ionisation
C2O4=y;//from the assumption
OH=Kw/H;// From the formula (ionic product)Kw=[H+]*[OH-]

printf("\t the concentration of the [C2HO4-] ion in the solution is : %4.3f M\n",C2HO4);
printf("\t the concentration of the [H+] ion in the solution is : %4.3f M\n",H);
printf("\t the concentration of the [C2O4-2] ion in the solution is : %4.1f*10^-5 M\n",C2O4*10^5);
printf("\t the concentration of the [OH-] ion in the solution is : %f*10^-13 M\n",OH*10^13);


//End
