

//example 3.21
//calculate reservior capacity
clc;
//given
W=0.4;                     //amount of water available from precipitation
Cl=0.15;                   //Channel loss
RL=0.1;                    //reservior loss
B=[120 320 120 200 100];   //Base period
D=[1800 800 900 1400 1200];//Duty at field
A=[500 600 300 1200 500];  //Area under crop

for i=1:5
    delta(i)=8.64*B(i)/D(i);
end

for i=1:5
    V(i)=delta(i)*A(i);
   
end
s=0;
for i=1:5
    s=s+V(i);
end
C=s*(1-W)/((1-Cl)*(1-RL));

mprintf("Reservior capacity=%i ha-m.",C);


