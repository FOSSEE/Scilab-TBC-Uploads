
                    // Example  12.6

Vl=415                              // Supply Voltage
p1=5200;                            // Load of 5.2-kW
p2=-1700;                           // Load of 1.7-kW

P=p1+p2;                            // Total Load
disp(' Total Power Consumed = '+string(P)+' Watt');

Q=atand(1.732*(p1-p2)/(p1+p2));     // Power Factor Angle

pf=cosd(Q);                         // Power Factor
disp(' Power Factor is = '+string(pf));

                                    // P= root(3)*Vl*Il*Cos(Q)
Il=P/(1.732*Vl*pf);
disp(' Line Current is  = '+string(Il)+' Amp');




       // p 417        12.6      