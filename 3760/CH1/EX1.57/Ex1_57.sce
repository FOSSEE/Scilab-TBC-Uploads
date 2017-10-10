clc;
k=5; // Effective turns ratio
E1=400; // supply voltage for primary
il=10; // load current
E2=E1/k; // magnitude of maximum secondary induced
E1o=E1+E2; // maximum possibe value of output voltage
P=(il*E2)/1000; // Rating of secondary winding
ip=(il*E2)/E1; // neglecting noload current, primary winding current 
I=ip+il; 
printf('Total primary line current is %f A',I);

