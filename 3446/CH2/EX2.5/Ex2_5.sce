//Exa 2.5 
//To find traffic intensity in Erlangs and CCS.
//Refer-Table 2.1(page No 28): Traffic data used to estimate traffic intensity

clc;
clear all;

time=90;  //in minutes
calls=10;  //no of calls in 90mins

//solution
CR=calls/(time/60);    //call arrival rate in calls/hour
tavg=(60+74+80+90+92+70+96+48+64+126)/10;    //average call holding time in sec per call
I= CR*(tavg/3600);     //traffic intensity in Erlangs
printf('Traffic Intensity is %.3f Erlangs = %.2f CCS \n ',I,I*36);
