//ques-2.3
//Calculating HCV of fuel
clc
x=0.72;//Weight of fuel (in g)
C=80;//Percentage of Carbon
t1=27.3;//Initial temperature
t2=29.1//Final temperature
W=250;//Water of water in calorimeter (in g)
w=150;//Water equivalent (in g)
HCV=((W+w)*(t2-t1))/x;//HCV of fuel (in kcal/kg)
HCV=HCV*4.2;//HCV of fuel (in kJ/kg)
printf("The HCV of the fuel is %d kJ/kg.\n",HCV);
