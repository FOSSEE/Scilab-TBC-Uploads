//AC Circuits : example 4.51 :(pg 4.40 & 4.41)
P=2000;
pf=0.5;
V=230;
S=(P/pf);
phi=acosd(pf);
I=(P/(V*pf));
Q=(V*I*sind(phi));
disp("P=2000 W");
disp("pf=0.5 (leading)");
disp("V=230 V");
disp("P=V*I*cos(phi)");
printf("\nI=%.2f A",I);
printf("\nS=V*I=P/cos(phi)=%.f VA",S);
printf("\nphi=%.f degrees",phi);
printf("\nQ=V*I*sin(phi)=%.f VAR",Q);