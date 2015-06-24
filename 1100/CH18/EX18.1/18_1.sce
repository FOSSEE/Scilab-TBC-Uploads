clc
//initialisation of variables
T2 = 0 //F
T1= 76  //F
h1= 611.8 //Btu/lb
h4= 127.4 //Btu/lb
h2= 704.4 //Btu/lb
x= 10000 //Btu/hr
v1= 9.116 //cu ft/lb
n=70
//CALCULATIONS
CP= (T2+460)/(T1-T2)
CP1= (h1-h4)/(h2-h1)
w= (x/60)/(h1-h4)
PD=(w*v1)/(n/100)
//RESULTS
printf ('CP1 = %.2f ',CP)
printf (' \n CP2 = %.2f ',CP1)
printf (' \n PD = %.2f cu ft/min',PD)
