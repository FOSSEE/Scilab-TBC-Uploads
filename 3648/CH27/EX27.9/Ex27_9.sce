//Example 27_9
clc();
clear;
//To fnd the approximate energy of the emitted alpha particle
m1=222.01753       //Units in u
m3=4.00263         //Units in u
m2=218.00893        //Units in u
massloss=m1-(m2+m3)       //Units in u
e1=931.5         //Units in MeV
e=e1/massloss*10^-5     //Units in MeV
printf("The approximate energy of the emitted alpha particle is E=%.2f MeV",e)
//In textbook answer s printed wrong as E=5.56eV the correct answer is E=1.56 eV
