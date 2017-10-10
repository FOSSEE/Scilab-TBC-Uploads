//Chapter 7 Example 3//
clc
clear
// useful energy=e1,energy in terms of joules=e//
e1=190;// in MeV//
e=e1*10^6*1.6*10^-19;
printf("\n Energy in terms of joules = %.15f J\n",e);
// number of fisions required to produce one joule=n//
n=1/e;
printf("\n No of fissions required = %.3f \n",n);
// number of nuclei burnt during 1 hr per MW of power=n1,percent of neutrons absorbed=p //
p=80;// in percent//
n1=10^6*n*3600/(p/100);
printf("\n Number of nuclei burnt during 1hr per MW of power  = %.3f absorption/hr \n",n1);
// Mass of U-235 consumed to produce 1MW of power=m,Avagadro number=A//
A=6.023*10^23;
m=235;// Atomic mass of uranium//
m=n1*m/A;// this is for 1MW//
m1=m*100// for 100MW//
printf("\n Fuel Consumption to produce 100MW = %.4f g/hr\n",m1);


 