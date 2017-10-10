// Ex 46 Page 391

clc;clear;close;
// Given
IscBYIfl=5;// as Isc=5*Ifl
ILByIfl=3;// as IL <= 3*Ifl
sf=5;//%

//IL=K**2*ISC
//dividing by Ifl
K=sqrt(ILByIfl/IscBYIfl)*100;//%
TstBYTf=(K/100)**2*IscBYIfl*sf/100*100;// % //ratio of torque
printf("Suitable auto transformation ratio = %.1f",K)
printf("\n Starting torque Tst = %.f percent of full-load torque",TstBYTf)
//ans wrong in the textbook.
