//Chapter 13
//Example 13_32
//Page 348

clear;clc;

v1=250;
v2=250;
w1=1500;
w2=2000;

i1=w1*1000/v1;
i2=w2*1000/v2;
in=i1-i2;
w=w1+w2;
ig=w*1000/(v1+v2);
ia=ig-i1;
ib=i2-ig;

printf("Load current on +ve outer = %d A \n\n", i1);
printf("Load current on -ve outer = %d A \n\n", i2);
printf("Current in nuetral = %d A \n\n", in);
printf("Total load on main generator = %d W \n\n", w);
printf("Current supplied by main generator = %d A \n\n", ig);
printf("Current in machine A = %d A \n\n", ia);
printf("Current in machine B = %d A \n\n", ib);

