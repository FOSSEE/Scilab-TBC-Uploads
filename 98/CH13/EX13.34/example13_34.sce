//Chapter 13
//Example 13_34
//Page 350

clear;clc;

v1=250;
v2=250;
i1=1200;
i2=1000;
l=200;
loss1=5;
loss2=5;

p1=v1*i1/1000;
p2=v2*i2/1000;
p3=l;

tl=p1+p2+p3+loss1+loss2;
ig=tl*1000/(v1+v2);
in=i1-i2;
i3=p3/(v1+v2)*1000;
ia=i1+i3-ig;
ib=ig-i2-i3;
la=ia*v1/1000;
lb=ib*v2/1000;

printf("Load on positive side = %d kW \n\n", p1);
printf("Load on negative side = %d kW \n\n", p2);
printf("Load on outers = %d kW \n\n", p3);

printf("(i) Total load on main generator = %d W \n\n", tl);
printf("    Current supplied by main generator = %d A \n\n", ig);

printf("(ii) Current in nuetral = %d A \n\n", in);
printf("\t Current in machine A = %d A \n\n", ia);
printf("\t Current in machine B = %d A \n\n", ib);
printf("\t Load on machine A = %d W \n\n", la);
printf("\t Load on machine B = %d W \n\n", lb);

