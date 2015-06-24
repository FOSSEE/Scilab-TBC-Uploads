clear;
//clc();
dab=1.2;
d12=0.4;
db2=0.85;

db1=sqrt(0.8*0.8 + db2*db2);

da2=db1;

da1=sqrt(d12*d12 + db2*db2);

v=2*(%pi)*50*2*60*log([db1*db1/da1*da1]);
printf("\n the voltage induced per unit length is: %.3f V/km\n",v/10000);
