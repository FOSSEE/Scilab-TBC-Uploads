a=500;  //say a=μh
b=0.5;  //say b=ρb
q=1.6*10^-19;
disp("Na=1/(q*μh*ρb);");
Na=1/(q*a*b);
printf('\n The value of Na is %f*10^16/cm^3',Na/10^16);
Wb=10^-4;
c=8.854*12*10^-14;  //say c=Єs
disp("Vb=q*Na*(Wb^2)/(2*Єs)");
Vb=q*Na*(Wb^2)/(2*c);
printf('\n The value of Vb is %fV',Vb);