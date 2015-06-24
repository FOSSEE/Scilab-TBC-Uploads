SFe2O3=21.5;//Standard Entropy of Fe2O3 in cal per deg per mol//
SCO=47.3;//Standard Entropy of CO in cal per deg per mol//
SFe=6.5;//Standard Entropy of Fe in cal per deg per mol//
SCO2=51.1;//Standard Entropy of CO2 in cal per deg per mol//
dS=2*SFe+3*SCO2-SFe2O3-3*SCO;//Standard entropy change in cal per deg per mol//
printf('Standard entropy change accompanying the reduction of Fe2O3 by CO=%fcal per deg per mol',dS);
printf('\nHere it will be noticed that dS is very small but definitely positive.');
printf('\nThe small value due to the fact that there is no change in number of moles of gases\nwhich are major contributors to the entropy change.');
