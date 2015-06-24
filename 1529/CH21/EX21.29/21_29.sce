//Chapter 21, Problem 29
clc;
N1=1;                           //primary turns
N2=60;                          //secondary turns
I1=300;                         //primary current
Ra=0.15;                        //ammeter resistance
R2=0.25;                        //secondary winding resistance
I2=I1*(N1/N2);                  //secondary current
V2=I2*Ra;                       //secondary voltage
Rt=Ra+R2;                       //total resistance of secondary circuit
e2=I2*Rt;                       //induced e.m.f. in secondary
l=e2*I2;                        //load on secondary
printf("(a) Reading on the ammeter = %d A\n\n",I2);
printf("(b) P.d. across the ammeter = %.2f V\n\n",V2);
printf("(c) Total load (in VA) on the secondary = %d VA",l);
