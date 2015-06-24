RL=20; //load resistance
Zo=50; //intrinsic impedance
Rin=50; //input resistance
Tin=10^(-RL/20); //reflection coefficient at input
Rg1=Rin*(1+Tin)/(1-Tin);
Rg2=Rin*(1-Tin)/(1+Tin);
disp("Ohms",Rg1,"Source resistance for positive Tin=");
disp("Ohms",Rg2,"Source resistance for negative Tin=");