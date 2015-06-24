//Chapter 13
//Example 13_33
//Page 349

clear;clc;

v1=250;
v2=250;
w1=150;
w2=100;
loss=3;

tl=w1+w2+loss*2;
i1=w1*1000/v1;
i2=w2*1000/v2;
in=i1-i2;
w=w1+w2;
ig=tl*1000/(v1+v2);
ia=i1-ig;
ib=ig-i2;
la=ia*v1/1000;
lb=ib*v2/1000;

printf("(i) Total load on main generator = %d kW \n\n", tl);

printf("(ii) Current supplied by main generator = %d A \n\n", ig);
printf("\t Load current on +ve outer = %d A \n\n", i1);
printf("\t Load current on -ve outer = %d A \n\n", i2);
printf("\t Current in nuetral = %d A \n\n", in);
printf("\t Current in machine A = %d A \n\n", ia);
printf("\t Current in machine B = %d A \n\n", ib);
printf("\t Load on machine A = %d kW \n\n", la);
printf("\t Load on machine B = %d kW \n\n", lb);



