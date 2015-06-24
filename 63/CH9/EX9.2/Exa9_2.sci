//Determine how much power must be delivered to the isotropic antenna

A = 2.15;
P1 = 1000;

P2 = P1*10^(0.1*A);

disp(P2, 'Power must be delivered to the isotropic antenna is (in W)')