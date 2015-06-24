//Chapter 17
//Example 17_5
//Page 407

clear;clc;

kva=[10000 10000 8000 8000];
x=[10 10 12 12];
kva_bb=5000;
x_bb=10;

base=input("Enter base kva:   ");

for i=1:4;
  per_x(i)= x(i)*base/kva(i);
  printf("%% reactance of generator %i = %.0f \n\n", i, per_x(i));
end
per_bb=x_bb*base/kva_bb;
printf("%% reactance of bus bar = %.0f \n\n", per_bb);

xa=per_x(1)*per_x(2)/(per_x(1)+per_x(2));
xb=per_x(3)*per_x(4)/(per_x(3)+per_x(4));

xf=xa+per_bb;
tx=xf*xb/(xf+xb);

printf("Total %% reactance from generator nuetral to fult point is = %.2f %% \n\n", tx);

fmva=base*100/tx/1000;
printf("Fault MVA = %.2f \n\n", fmva);


