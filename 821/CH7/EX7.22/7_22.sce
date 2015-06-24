CNH3=0.1;//concentration of NH3 solution//
CNH4Cl=0.1;//concentration of NH4Cl solution//
POH=4.74;
PH=14-POH+log10(CNH3/CNH4Cl);
printf('PH of the solution=PH=%f',PH);
printf('\nOn adding 0.01mol of HCl,assuming that no volume change occurs,0.01mol of NH4Cl is produced.\nTherefore,the concentration of NH3 decreases by 0.01 and that of NH4Cl increases by 0.01 ');
C1NH3=0.09;
C1NH4Cl=0.11;
PH1=14-POH+log10(C1NH3/C1NH4Cl);
printf('\nPH of the solution=PH1=%f',PH1);
printf('\nOn adding 0.01mol of NaOH,assuming that no volume change occurs,0.01mol of NH3 is produced.\nTherefore,the concentration of NH3 increases by 0.01 and that of NH4Cl decreases by 0.01 ');
C2NH3=0.11;
C2NH4Cl=0.09;
PH2=14-POH+log10(C2NH3/C2NH4Cl);
printf('\nPH of the solution=PH2=%f',PH2);
