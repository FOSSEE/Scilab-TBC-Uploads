
                    // Example  12.5

p1=3000;                            // Load of 3-kW
p2=1500;                            // Load of 1.5-kW
P=p1+p2;                            // Total Load
disp(' Total Power Consumed = '+string(P)+' Watt');

Q=atand(1.732*(p1-p2)/(p1+p2));     // Power Factor Angle
pf=cosd(Q);                         // Power Factor
disp(' Power Factor is = '+string(pf));




       // p 417        12.5      