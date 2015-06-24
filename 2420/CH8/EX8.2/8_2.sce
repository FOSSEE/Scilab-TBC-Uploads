clc
clear
//Initialization of variables
Ihp=101.1
Bhp=85.7
md=3000 //lb/hr
h1=1172 //Btu/hr
h2=180 //Btu/hr
h3=1025 //Btu/hr
//calculations
eta1=Ihp*2545/(md*(h1-h2)) *100
eta2=Bhp*2545/(md*(h1-h2)) *100
etat=(h1-h3)/(h1-h2) *100
engeff=eta1/etat *100
rate1= md/Ihp
rate2=md/Bhp
h22=h1-2545/rate1
//results
printf("Actual thermal efficiency based upon Ihp = %.2f lb per ihp hr",eta1)
printf("\n Actual thermal efficiency based upon Bhp = %.2f lb per ihp hr",eta2)
printf("\n Ideal thermal efficiency = %.2f percent ",etat)
printf("\n Engine efficiency = %.1f percent",engeff)
printf("\n Steam rate = %.2f lb per ihp hr",rate1)
printf("\n Steam rate = %.2f lb per bhp hr",rate2)
printf("\n Enthalpy of exhaust steam = %d Btu/lb of steam",h22)
