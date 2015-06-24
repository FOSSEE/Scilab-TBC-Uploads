// Amplitude Modulation-Transmission : example 2-2 : pg(78)
b=100;
a=60;
d=125;
c=35;
x=180;
y=0;
m1=((b-a)/(b+a))*100;
m2=((d-c)/(d+c))*100;
m3=((x-y)/(y+x))*100;
//part(a)
printf("\npercent(m) = (B-A/B+A)*100percent = %.f percent",m1);
//part(b)
printf("\npercent(m) = (B-A/B+A)*100percent = %.f percent",m2);
//part(c)
printf("\npercent(m) = (B-A/B+A)*100percent = %.f percent",m3);
//part(d) : this is a case of overmodulation
//part(e) : this is a distorted AM wave as the increase > decrease in carrier's amplitude