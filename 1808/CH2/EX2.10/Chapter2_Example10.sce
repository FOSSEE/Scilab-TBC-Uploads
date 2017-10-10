clc
clear
//INPUT DATA
//0.8062 CH4+0.0541 C2H6 +0.0187C3H8+0.0160C4H10+0.1050N2+a (O2+3.76 N2)=b (0.078 CO2+0.002 CO +0.07 O2 +0.85N2)+ c H2O ;//Combustion equation for 1 kmol of fuel mixture
//b*(0.078+0.002)=0.8062+2*(0.0541)+3*(0.0160);//by carbon balance
c=1.93;//Carbon balance
a=2.892;//Oxygen balance

//CALCULATIONS
//(0.8062 CH4 + 0.0541 C2H6 + 0.0187 C3H8 + 0.0160 C4H10 + 0.1050 N2 )+ 2.892 (O2+3.76 N2) = 12.93 (0.078 CO2 )+0.002(0+0.07 O2 +0.85 N2)+1.93 H2O ;//Balanced chemical equation 
xm=a*4.76/1;//Air fuel ratio on molar basis
//(0.8062 CH4 + 0.0541 C2H6 + 0.0187 C3H8 + 0.0160 C4H10 + 0.1050 N2 )+ 2.892 (O2+3.76 N2) = 1.0345 CO2+1.93 H2O+7.625 N2 ;//Balanced chemical equation 
xth=2*4.76;//Theoretical air fuel ratio
nth=(xm/xth)*100;//Percentage of theoretical air

//OUTPUT
printf('(a)The air fuel ratio on molar basis %3.2f kmol of air/kmol of fuel \n (b)Percentage of theoretical air %3.1f percentage ',xm,nth)
