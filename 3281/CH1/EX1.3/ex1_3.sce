//Page Number: 14
//Example 1.3
clc;
//Given
pm=3;
pl=4;
l=24;//cm
l1=l/100;//m

//Attenuation
tin=(pm-1)/(pm+1);
tl=(pl-1)/(pl+1);
alp=(1/(2*l1))*log(tl/tin);//Np/m
disp('Np/m',alp,'Attenuation in the line');
