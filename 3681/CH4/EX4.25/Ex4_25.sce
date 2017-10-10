// Calculating the amount of oil and amount of water
clc;
disp('Example 4.25, Page No. = 4.51')
// Given Data
MVA = 40;// MVA rating of transformer
Q = 200;// Total losses (in kW)
Q_oil = 0.8*Q;// Since 20% of losses are dissipated by tank walls  Heat taken up by oil (in kW)
// Calculation of the amount of oil
T = 20;// Temperature rise of oil (in degree celsius)
cp = 0.4;// by assuming
Vo = 0.24*Q_oil/(cp*T);// Amount of oil (in litre per second)
disp(Vo,'Amount of oil (litre per second)=');
// Calculation of the amount of water
T = 10;// Temperature rise of water (in degree celsius)
Vw = 0.24*Q_oil/T;// Amount of water (in litre per second)
disp(Vw,'Amount of water (litre per second)=');
//in book Vo is equal to 4.8 (litre per second) and Vw is equal to 3.84 (litre per second).  The answers vary due to round off error
