//Transient analysis
//pg no - 8.17
//example no - 8.13
a=((10*30)/(10+30));
d=5/a;
b=0;
c=5*(20/30);
printf("iL(0-) = %.2f A", d);
printf("\nvb(0-) = %.f", b);
printf("\nva(0-) = %.2f V", c);
disp("Applying Kcl equations at t=0+");
disp("((va(0+)-5)/10)+(va(0+)/10)+(va(0+)-vb(0+))/20 = 0");        //equation 1
disp("((vb(0+)-va(0+))/20)+((vb(0+)-5)/10)+(2/3) = 0");            //equation 2
//solving 1 and 2
M=[0.25, -0.05; -0.05, 0.15];
N=[0.5, -0.167]';
O=inv(M);
X=O*N;
disp(X);
disp("va(0+)= 1.9 A");
disp("vb(0+)= -0.477 A");
