disp("Vbi=φm-((K*T/q)*log(Nc/n))");
a=0.72;  //say φm=a
b=0.0259;  //say b=K*T/q
Nc=3.22*10^19;
n=10^15;
Vbi=a-(b*log(Nc/n));
printf('\n The value of Vbi is %fV',Vbi);
disp("W=sqrt(2*Єs*(Vbi-V)/(q*Nd))");
c=11.9*8.854*10^-14;
V=0;
q=1.6*10^-19;
Nd=10^15;
W=sqrt(2*c*(Vbi-V)/(q*Nd));
printf('\n The value of W is %f*10^-5 cm',W*10^5);