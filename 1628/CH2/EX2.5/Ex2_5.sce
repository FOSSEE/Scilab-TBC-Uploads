
                  //  Example 2.5

            // From the diagram 2.14
            
rp=(1/20)+(1/10)+(1/20);       // Parallel resistance
Rp=1/rp;                       // The resistance Rp
Rs=15;                         // Series resistance
Rab=Rs+Rp;                     // Effective resistance between A & B
disp('(a) Effective resistance between A & B for diagram (a) = '+string(Rab)+' Ohms');

           // for diagram (b) network above line AB  i.e R1=[(R+R)||R]+R
R1=5/3;                        // Resistance of network
R2=R1;                         // The lower part is also same as R1
R12=5/6;                       // Combination of R1 & R2
Rab1=(R12*1)/(R12+1);          // Effective resistance between A & B for diagram (b)
disp('(b) Effective resistance between A & B for diagram (b) = '+string(Rab1)+' R');

          // for diagram (c)
r1=(3*6)/(3+6);                // Parallel combination of 3 & 6 Ohms Resistance
Ri=r1+18;                      // series of r1 & 18 Ohms Resistance
rab=(20*20)/(20+20);           // Parallel combinatuion of Ri & 20 Ohms Resistance
Rab2=rab+5;                    // series of rab & 2 Ohms Resistance
disp('(c) Effective resistance between A & B for diagram (c) = '+string(Rab2)+' Ohms');




              //   p 23                 2.5