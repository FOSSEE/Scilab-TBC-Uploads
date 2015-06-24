SFe2O3=21.5;//Standard Entropy of Fe2O3 in cal per deg per mol//
SH2=31.21;//Standard Entropy of H2 in cal per deg per mol//
SFe=6.5;//Standard Entropy of Fe in cal per deg per mol//
SH2O=16.75;//Standard Entropy of H2O in cal per deg per mol//
dS=2*SFe+3*SH2O-SFe2O3-3*SH2;//Standard entropy change in cal per deg per mol//
printf('Standard entropy change in the given reaction=%fcal per deg per mol',dS);
