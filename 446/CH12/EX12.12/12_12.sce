clear
clc
disp('Exa-12.12');
m238U=238.050786; //mass of various quantities
m206Pb=205.974455;
m4He=4.002603;
c2=931.5;     //constants
Na=6.023*10^23;   //avagadro's number
Q=(m238U-m206Pb-8*m4He)*c2; 
t12=(4.5)*10^9*(3.16*10^7);    //half life years to seconds conversion
w=0.693/t12;                 // lambeda
NoD=(Na/238)*w;      //number of decays
E=NoD*Q*(1.6*10^-19)*10^6;        //rate of liberation of energy,converting MeV to eV
printf('Rate of energy liberation is %.1e W',E);
