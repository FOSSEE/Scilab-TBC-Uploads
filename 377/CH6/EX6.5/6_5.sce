disp("n=dNa/Mat");
a=5.9*10^5;  //say a=σ
e=1.6*10^-19;
n=8.5*10^22;
me=9.1;
disp("μe=σ/(e*n)");
b=a/(e*n);  //say μe=b
printf('\n The value of μe is %fcm^2/V/s',b);
disp("τ=μe*me/e");
c=b*me/e;  //say c=τ
d=c*10^-21;
printf('\n The value of τ is %f*10^-14s',d);
