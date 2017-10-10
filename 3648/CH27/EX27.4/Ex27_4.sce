//Example 27_4
clc();
clear;
//To compute the binding energy of deuterium
m1=2.014102        //Units in u
m2=0.000549    //Units in u
total=m1-m2      //Unts in u
m3=1.007276    //Units in u
m4=1.008665        //Units in u
suma=m3+m4        //Units in u
massdefect=suma-total    //units in u
e1=931.5  //Units in MeV
m5=1           //Units iin eV
e=massdefect*e1/m5       //Units in MeV
printf("The binding energy of deuterium is E=%.2f MeV ",e)
