

                      // Example  2.18

R1=3.42;        // Resistance of 3.42 Ohms
T1=20;          // temperature at 3.42 ohms resistor
R2=4.22;        // Resistance R2
ao=0.00426;

      // By using Temprerature Formula  ==> i.e  R1/(1+aoT1) =R2/(1+aoT2)

z=(R2/R1)*(1+ao*T1);
T2=(z-1)/ao;
T=T2-T1;        // Temperature Rise
disp(' The Temperature Rise is = '+string(T)+' Digree Celsius');





      // p 32       2.18
