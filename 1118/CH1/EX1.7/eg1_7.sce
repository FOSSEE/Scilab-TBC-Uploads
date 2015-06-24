// to plot the chronological ,load duration, load energy curve and then 
//calculating the load factor and the utilization factor

clc; 
clf();
inst_cap=100;           //installed capacity in MW
max_dem=70;            //demand in MW
t1=6;                 //time in hours
t2=9.5;
t3=0.5;
t4=2;
t5=6;
d1=70;               //demand in MW
d2=50;
d3=40;
d4=200;
d5=10;

scf(0);
x=[0 1 2 3 4 5 6 7 8 9 10 11 12 12.5 13 14 15 16 17 18 19 20 21 22 23 24];
//shows the time from 12pm to 12 am
//0 shows 12am and 24 shows 12 pm

y=[20 20 10 10 10 10 10 10 50 50 50 50 40 40 50 50 50 50 50 50 70 70 70 70 70 70];
//loads in MW

bar(x,y,0.5,'blue');
xlabel('TIME');        //this is time
ylabel('LOAD IN MW');
title('CHRONOLOGICAL LOAD CURVE');


scf(1);
x=[0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24];
//time in hours

y=[70 70 70 70 70 70 70 50 50 50 50 50 50 50 50 50 40 20 20 10 10 10 10 10 10];
//loads in MW

bar(x,y,1,'red');
xlabel('TIME IN HOURS');
ylabel('LOAD IN MW');
title('LOAD DURATION CURVE');

ene=((d1*t1) + (d2*t2) + (d3*t3) + (d4*t4) + (5*t5));     //energy in MWH

d_lf=(ene/(max_dem*24));                     //demand factor is dimentionless
printf("\n the demand factor is:  %f\n ",d_lf);

u_f=(max_dem/inst_cap);                    //utilization factor is dimentionless
printf("\n the utilization factor is:  %f\n ",u_f);

scf(2);
x=[0,10,20,40,50,70];
y=[0,240,420,740,895,1015];
plot(x,y);
xlabel('LOAD IN MW');
ylabel('ENERGY IN MWH');
title('LOAD ENERGY CURVE');

