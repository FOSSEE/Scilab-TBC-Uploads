

                     // Example  7.11

              // Net Induction When in Same Direction  i.e 1.8= L1+L2+2M
              // Net Induction When in Opposite  i.e 0.8= L1+L2-2M
              // by Solving 2 equation we get M= 0.25
k=0.6;
M=0.25;
disp('(a) Mutual induction of a Coil = '+string(M)+' H');
                   // by Adding Eq 1 & 2 will get L1+L2= 1.3 H
                   // we know that k= M/(L1*L2)
L1L2=M^2/k^2;      // using above Formula 
                   // By using L1L2 & L1+L2
L12=1.3;           // L1+L2
L1_L2=sqrt(L12^2-4*L1L2);   // Value of  L1-L2

             // by using L1+L2 & L1-L2 will get 

L1=1.149;
L2=0.151;
disp('(b.1) Self Induction of a Coil 1 = '+string(L1)+' H');
disp('(b.2) Self Induction of a Coil 2 = '+string(L2)+' H');



             // p 237    7.11

 