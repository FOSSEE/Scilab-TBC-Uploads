//Ex:97
clc;
clear;
close;
p_i1=50;// i/p power at f1 in db
p_i2=40;// i/p power at f2 in db
p_i3=25;// i/p power at f2 in db
p_c1=47;// carrier power at (f1) at i/p of second 3 db coupler
p_c2=37;// carrier power at (f2) at i/p of second 3 db coupler
p_c3=25;// carrier power at (f3) at i/p of second 3 db coupler
pc1=p_c1-3;//carrier power at (f1) at output in db
pc2=p_c2-3;//carrier power at (f2) at output in db
pc3=p_c3-3;//carrier power at (f3) at output in db
printf("The carrier power at (f1) at output=%f db", pc1);
printf("\n The carrier power at (f2) at output=%f db", pc2);
printf("\n The carrier power at (f3) at output=%f db", pc3);