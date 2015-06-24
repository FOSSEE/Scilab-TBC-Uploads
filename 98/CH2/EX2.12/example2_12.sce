//Chapter 2
//Example 2_12
//Page 25

clear;clc;

md=10;
h=20;
n_overall=0.8;
lf=0.4;


//river discharge
ugpw=md*lf*24*7*1e3;
printf("(i) Units generated per week =%.1f kWh \n\n", ugpw);
app=1e3*9.81*h*n_overall/1000;
upw=app*24*7;
q=ugpw/upw;
printf("\t River dishcharge required = %.2f m^3/sec", q);

//load factor
flow=20;
pd=app*flow;
ug=pd*24;
lf=ug/1e4/24;
printf("(ii) Load factor =%.2f %% \n\n", lf*100);