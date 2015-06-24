//Chapter 17
//Page 402
//Example 17_1

clear;clc;

kva=[15000 20000];
x=[30 50];
vl=12000;

base=input("Enter base kVA:    ");

for i=1:2;
  per_x(i)=base*x(i)/kva(i);
  printf("%% Reactance of alternator %i is = %.2f %% \n\n", i,     per_x(i));
end;

i=base*1000/sqrt(3)/vl;
printf("Line current = %.0f A \n\n", i);

tx=per_x(1)*per_x(2)/(per_x(1)+per_x(2));
printf("Total percentage reactance from generator nuetral upto fault point = %.2f %% \n\n", tx);

isc=i*100/tx;
printf("Short circuit current = %.0f A \n\n", isc);

