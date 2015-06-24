//Chapter 19
//Example 19_1
//Page 483

clear;clc;

i=1500;
mva=1000;
v=33*1e3;
t=3;

printf("(i) Rated normal current = %.0f A \n\n", i);
printf("(ii) Breaking capacity = %.0f MVA \n\n", mva);
rsbc=mva*1e6/sqrt(3)/v;
printf("(iii) Rated symmetrical breaking capacity = %.0f A \n\n", rsbc);
rmc=2.55*rsbc;
printf("(iv) Rated making current = %.0f A \n\n", rmc);
printf("(v) Rated short time rating = %.0f A for %.0f sec \n\n", rsbc, t);
printf("(vi) Rated service voltage = %.0f kV \n\n", v/1000);
