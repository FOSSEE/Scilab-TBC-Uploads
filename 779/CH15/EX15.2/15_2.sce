Ps = 2.339; P = 100;
W2 = (0.622*Ps)/(P-Ps);
hfg2 = 2454.1; hf2 = 83.96; cpa = 1.005;
hw1 = 2556.3;
T2 = 20; T1 = 30;
W1 = (cpa*(T2-T1)+(W2*hfg2))/(hw1-hf2);
Pw1 = ((W1/0.622)*P)/(1+(W1/0.622));
Ps1 = 4.246;
fi = (Pw1/Ps1);
disp("%",fi*100,"Relative humidity is")
disp("kg vap./kg dry air",W1,"Humidity ratio of inlet mixture is")