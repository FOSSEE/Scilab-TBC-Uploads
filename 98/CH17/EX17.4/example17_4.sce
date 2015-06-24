//Chapter 17
//Example 17_4
//Page 405

clear;clc;

kva=[10000 10000 5000];
x=[12 12 18];
kva_tr=5000;
x_tr=5;

base=input("Enter base kva:   ");

for i=1:3;
  per_x(i)= x(i)*base/kva(i);
  printf("%% x(%i) = %.0f \n\n", i, per_x(i));
end
per_xt=x_tr*base/kva_tr;
printf("%% Xt = %.0f \n\n", per_xt);

tx1=1/(1/per_x(1)+1/per_x(2)+1/per_x(3));
fmva1=base*100/tx1*1/1000;
tx2=tx1+per_xt;
fmva2=base*100/tx2*1/1000;

printf("(i) Total percentage reactance from generator to fault F1 = %.2f %% \n\n", tx1);
printf("    Fault MVA = %.2f \n\n", fmva1);

printf("(ii) Total percentage reactance from generator to fault to F2 = %.2f %% \n\n", tx2);
printf("     Fault MVA = %.2f \n\n", fmva2);


