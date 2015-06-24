clc
clear
disp('example 14.7')
ca=200  //capacity of unit a
cb=100   //capacity of unit b
ra=1.5    //speed regulation of unit a   
rb=3      //speed regulation of unit b
f=50       //frequency
pla=100    //load on each bus
plb=100
raa=ra*f/(pla*ca)
rbb=rb*f/(plb*cb)
pa=rbb*(pla+plb)/(raa+rbb)
pb=pla+plb-pa
tp=pa-pla
printf(" generation at the plant a is %dMW and \n generation at the plant b is %dMW \n transfer power from plant a to b is %dMW",pa,pb,tp)