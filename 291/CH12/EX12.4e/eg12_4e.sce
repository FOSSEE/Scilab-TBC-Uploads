n1 =5;
m1= 6;

t1 =21;
num1 = n1*(n1+m1+1)/2;
d1=abs(t1 - num1);
val = d1/sqrt(n1*m1*(n1+m1+1)/12);
//disp(d1, "d is")
//disp(val, "val is")
pval = 2*(1-cdfnor("PQ", val, 0,1));
disp(pval, "The p-value for eg 12.4a is")
n2 =9;
m2= 13;
t2 =72;
d2=abs(t2 - n2*(n2+m2+1)/2);

val = d2/sqrt(n2*m2*(n2+m2+1)/12);
pval = 2*(1-cdfnor("PQ", val, 0,1));
disp(pval, "The p-value for eg 12.4d is")