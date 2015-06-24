

//example 4.34
//calculate flood discharge with recurrence period of 100 years and 200 years
clc;funcprot(0);
//given
N=40;
Sn=1.1413;yn=0.5436;         //from table 4.21 (a) and(b)
q=[1330 1095 1030 980 975 950 945 940 925 855 853 840 835 825 810 795 756 710 708 705 700 670 625 620 610 605 595 585 570 550 530 505 500 495 485 465 460 420 390 380];  //discharge
s=0;
for i=1:40
    s=s+q(i);
    end
xavg=s/N;
w=0;
for i=1:40
    t(i)=(q(i)-xavg)^2;
    w=w+t(i);
end
sigma=(w/(N-1))^0.5;
N=10;
y10=-(2.303*log10(2.303*log10(N/(N-1))));
K10=(y10-yn)/Sn;
x10=xavg+K10*sigma;
N=20;
y20=-(2.303*log10(2.303*log10(N/(N-1))));
K20=(y20-yn)/Sn;
x20=xavg+K20*sigma;
N=5;
y5=-(2.303*log10(2.303*log10(N/(N-1))));
K5=(y5-yn)/Sn;
x5=xavg+K5*sigma;

T=100;
y100=-(2.303*log10(2.303*log10(T/(T-1))));
K100=(y100-yn)/Sn;
x100=xavg+K100*sigma;

T=200;
y200=-(2.303*log10(2.303*log10(T/(T-1))));
K200=(y200-yn)/Sn;
x200=xavg+K200*sigma;
x100=round(x100);
mprintf("For T=100 years:\nflood discharge=%f cumecs.\n\nFor T=200 years:\nflood discharge=%i cumecs.",x100,x200);
