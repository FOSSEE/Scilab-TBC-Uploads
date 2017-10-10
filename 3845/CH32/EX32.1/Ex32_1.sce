//Example 32.1
//Activity R=1.00*10^-6 Ci=3.70*10^4 Bq=3.70*10^4 decays/s
m=2;//Mass (kg)
RBE=20;//Relative Biological Effectiveness, See Table 32.2
d=(3.70*10^4)*(3.16*10^7);//Number of decays per year=R*Number of seconds in a year
E=d*5.23*1.60*10^-13;//Ionisation energy deposited per year (J)
Dose1=(E/m)/1;//Dose (Gy)
Dose2=Dose1*20;//Dose (Sv)
printf('Dose in Gy = %0.3f Gy',Dose1)
printf('\nDose in Sv = %0.1f Sv',Dose2)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

