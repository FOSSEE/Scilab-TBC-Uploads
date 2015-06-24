//Wired Digital Communications : example 9-1 : (pg 405 & 406)
M=110;
x=7;
n=log2(M);
a=(log10(110)/log10(2));
b=2^a;
u=(a/x)*100;
y=log10(b);
u1=(y/3)*100;
printf("\nIn binary system, n=log2M = %.2f",n);//number of bits
printf("\n2^6.78 = %.f",b);
printf("\n7 bits are required and efficiency is u = %.f percent",u);
printf("\nIn a decimal system, the number of dits required is %.f i.e total of 3 dits",y);
printf("\nThe efficiency is %.f percent",u1);