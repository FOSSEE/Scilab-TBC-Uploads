R=1.987;//universal gas constant//
T=473;//temperature in kelvin//
A=2.75*10^15;//frequency factor in per sec//
K=1.38*10^-16;//boltzmans constant//
h=6.625*10^-27;//planks constant//
dn=0;
dS=4.57*(log10(A)-log10(exp(1))-log10(9.85*10^12));//entropy change in cal per deg//
printf('The entropy of activation=dS=%f=9.19eu',dS);
printf('\nSince A is independent of concentration units dS does not sepend on the concentration units used\nand hence the standard state.\nHowever if the time were expressed in different units A will assume a different value\nand consequently the value of dS will be different\nIf time were expressed in minutes A=2.75*10^15*60 per min\ndS=9.19+4.57*log10(60)=17.32eu\nfor bimolecular reaction e^2=7.4*10^10 \nso dS will result in dS=-10.1eu or mol per litre.');
printf('\nIf the concentration were expressed in mol per millilitre A would be 7.4*10^13 \nso dS will result in dS=-10.1+13.6=3.5eu or mol per millilitre\nIf the concentration were expressed in molecules per millilitre the value of A will be multiplied by 6.023*10^23 \nso dS would result in as dS=-10.1-94.9=-105eu or -105molecules per millilitre');
