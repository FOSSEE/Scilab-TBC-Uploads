//clc()
m = 100;//kg of pyrites charged
xfes2in = 0.8;
xganguein = 0.2;
xfes2out = 0.05;
//let x be the FeS2 in the feed, then, Fe2O3 = (80 - x)*159.69 / (119.98*2) and gangue = 20, total = 73.24 + 0.3345, be FeS2 is only 5 % in the product, hence
x = 0.05 * 73.24 / (1 - 0.05*0.3345);
mfes2reacted = m*xfes2in - x;
//4FeS2 + 11O2 = 2Fe2O3 + 8SO2
Hfes2 = -178.02;//kJ/mol
Hfe2o3 = -822.71;//kJ/mol
Hso2 = -296.9;//kJ/mol
Hreac = 2 * Hfe2o3 + 8 * Hso2 - 4 * Hfes2;
N = mfes2reacted *1000/ 119.98;
H = Hreac * N / 4;
H1 = H/m;//(heat of reaction per kg of coal burnt)
disp("kJ",H1,"Heat of reaction per 1 kg of coal burned = ")