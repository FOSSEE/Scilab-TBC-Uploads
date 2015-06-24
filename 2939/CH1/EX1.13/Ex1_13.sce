
//Ex1_13

clc;

//Given:

e=200; // in Mev
m=0.235; // weight of uranium atom in Kg
enthalpy=393.5; // in KJ/mol
Na=6.02*10^23;


//solution:
e1=e*1.6*10^-19*10^6;
atoms=Na/m;
e2=atoms*e1;//energy released in J
m1=(e2*12)/(393.5*1000*1000);// in Kg
m2=m1/1000;// in tons
printf("\n The amount of coal required in Kg is = %f", m2)
