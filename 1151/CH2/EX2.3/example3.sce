//time requiredto get second peak

printf("c(s)=25/(s*(s^2+8*s+25))");
w=sqrt(25);
d=0.8;
t=3*%pi/(w*sqrt(1-d^2));
disp(t,"required time");
