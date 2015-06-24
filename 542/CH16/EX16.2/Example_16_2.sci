clear;
clc;
printf("\n Example 16.2");
E = [1 0.64 0.49 0.38 0.295 0.22 0.14];
J = [0 0.1 0.2 0.3 0.5 0.6 0.7];
plot(J,E,rect=[0,1,0,1]);
xtitle("Plot for drying data","J = kt/L^2","E");

//For the 10 mm strips
mi = (0.28 - 0.07);        //Initial free moisture content in kg/kg
mf = (0.13-0.07);          //Final free moisture content in kg/kg
//at
t = 25;                    //time is in ksecs
E = (0.06/0.21);
//at E = 0.286 ,J = 0.52 from the plot of given data and J = kt/L^2
k = poly([0],'k');
k1 = roots(0.52 - (k*t)/(10/2)^2);
printf("\n k = %f",k1);

//for the 60 mm planks
m1i = (0.22 - 0.07);       //Initial free moisture content in kg/kg
m1f = (0.13 - 0.07);       //Final free moisture content in kg/kg
E = (m1f/m1i);
//at E = 0.20 from yhe plot of the given data J = 0.63 and J = kt/L^2
t1 = 0.63*(60/2)^(2)/k1;
printf("\n t1 = %d ksecs or %.1f days",t1,(t1*1000/(3600*24)));

