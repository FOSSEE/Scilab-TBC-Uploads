clc;
warning("off");
printf("\n\n example7.3 - pg274");
// given
// composition of fuel gas
nH2=24;
nN2=0.5;
nCO=5.9;
nH2S=1.5;
nC2H4=0.1;
nC2H6=1;
nCH4=64;
nCO2=3.0;
// calculating the theoritical amount of O2 required
nO2theoreq=12+2.95+2.25+0.30+3.50+128;
// since fuel gas is burned with 40% excess O2,then O2 required is
nO2req=1.4*nO2theoreq;
nair=nO2req/0.21;  // as amount of O2 in air is 21%
nN2air=nair*(0.79);  // as amount of N2 in air is 79%
nN2=nN2+nN2air;
nO2=nO2req-nO2theoreq;
nH2O=24+0+0.2+3.0+128;
nCO2formed=72.1;
nCO2=nCO2+nCO2formed;
nSO2=1.5;
ntotal=nSO2+nCO2+nO2+nN2+nH2O;
mpSO2=(nSO2/ntotal)*100;
mpCO2=(nCO2/ntotal)*100;
mpO2=(nO2/ntotal)*100;
mpN2=(nN2/ntotal)*100;
mpH2O=(nH2O/ntotal)*100;
printf("\n\n gas                            N2                O2             H2O         CO2           SO2");
printf("\n\n moles                       %f     %f      %f      %f    %f",nN2,nO2,nH2O,nCO2,nSO2);
printf("\n\n mole percent                  %f     %f      %f      %f    %f",mpN2,mpO2,mpH2O,mpCO2,mpSO2);






