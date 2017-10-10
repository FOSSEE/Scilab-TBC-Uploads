//chapter 4 Ex 38

clc;
clear;
close;
x=poly(0,'x');
AtoS=30; StoA=10;
y=2*x-(AtoS+2*AtoS);        //equation 1
y=(x+AtoS+StoA)/3;    //equation 2
for x=1:99
  if  2*x-(AtoS+2*AtoS)==(x+AtoS+StoA)/3
    break
  end
end
y=(x+AtoS+StoA)/3;
printf("Arun has Rs.%d and Sajal has Rs.%d",x,y);
