clear;
clc;
printf("\n Example 8.3");
//It is assumed that Q0 is the volumetric flowrate of feed
// Q2 the volumetric flowrate of concentrate
//C0 the solute concentration in the feed
// C2 the solute concentration in the concentrate
// F the volumetric flowrate of membrane permeate
// A the required membrane area.
// It is also assumed that there is no loss of solute through the membrane.
Cl = 3;
while 1
    Clnew = Cl -(0.04-0.02*log(30/Cl))/(Cl^(-1)/50);
    if Clnew == Cl then
        break;
    end
    Cl = Clnew;
end
    printf("\n Cl = %d kg/m^3",Cl);
printf("\n below this concentration the membrane flux is 0.04 m/h");

//This does not pose a constraint for the single stage as the concentration of solute C2 will be that of the final concentrate, 20 kg/m3.
//Conservation of solute gives:QoCo = Q2C2
//A fluid balance gives : Qo = F + Q2
//Combining these eq and substituting Known values:
A = (2.438/0.02)/log(30/20);
printf("\n A = %d m^2",A);
//The tubular membranes to be used are available as 30 m^2modules.
printf("\n the no of required modules are %d ",A/30);

//Part(b)

//Conservation of solute gives = QoCo = Q1C1 = Q2C2
//A fluid balance on stage 2 gives Q1 = Q2 + F2
//A fluid balance on stage 2 gives Q1 = Q2 +F2
//Substituting given values in above eqns
//2.5 = 1.25/C1 + 0.02A1ln(30/C1)
function[A1]=a(C1)
    A1 = (2.5-1.25/C1)/(0.02*log(30/C1));
    funcprot(0);
endfunction
function[A2]=b(C1)
    A2 = (1.25/C1 - 0.0625)/0.00811
    funcprot(0);
endfunction

printf("\n The procedure is to use trial and error to estimate the value of C1 that gives the optimum values of A1 and A2");
printf("\n If C1 = 5kg/m^3 then A1 = %d m^2 and A2 = %d m^2",a(5),b(5));
printf("\n an arrangement of 3 modules −1 module is required.");
printf("\n\n\n  If C1 = 4 kg/m^3 then A1 = %dm^2 and A2 = %dm^2",a(4),b(4));
printf("\n an arrangement of 2 modules −1 module is almost sufficient.");
printf("\n\n\n   If C1 = 4.5 kg/m^3 then A1 = %dm^2 and A2 = %d m^2",a(4.5),b(4.5));
printf("\n an arrangement of 2 modules −1 module which meets the requirement");
printf("\n\n This arrangement requires the minimum number of modules.");










