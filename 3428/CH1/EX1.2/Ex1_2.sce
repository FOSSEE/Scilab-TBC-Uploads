//Section-1,Example-2,Page no.-AC.34
// To find number average molecular masses(Mn_bar) and weight averge molecular masses(Mw_bar)
clc;
WA=200
WB=200
WC=100
MA_bar=1.2*10^5
MB_bar=5.6*10^5
MC_bar=10*10^5
Mn_bar_mixture=(WA+WB+WC)/(WA/MA_bar+WB/MB_bar+WC/MC_bar)
disp (Mn_bar_mixture,'number average molecular mass')
Mw_bar_mixture=((4.5*10^5*200)+(8.9*10^5*200)+(10*10^5*100))/(200+200+100)
disp (Mw_bar_mixture,'weight averge molecular mass')
