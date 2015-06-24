//example 4.52
//find the equation of infiltration capacity
clc;funcprot(0);
//given
fc=1;            //constant infiltration rate
ft=[10.4 5.6 3.2 2.1 1.5 1.2 1.1 1 1];   //infiltration capacity
f=ft(1)-fc;
t=[0:0.25:2];

for i=1:9
    r(i)=ft(i)-fc;
   
end
for i=1:7
     h(i)=log10(r(i));
end
s=0.775;        //from graph
k=1/(log10(%e)*s);
k=round(k*100)/100;
mprintf("Equation is:\nft=fc+%fe^(-%ft)",f,k);


