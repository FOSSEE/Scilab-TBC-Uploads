

//example 4.8
//compute maximum rainfall intensities for 15,30,45,60,90,120 minutes
//plot intensity duration graph
clc;funcprot(0);
//given
CR=[0 12.4 22.1 35.1 52.7 63.7 81.9 109.2 123.5 132.6 143.3 146.0 146.0];  //cumulative rainfall

c15(2)=12.4;
c30(3)=22.1;
c45(4)=35.1;
c60(5)=52.7;
c90(7)=81.9;
c120(9)=123.5;
for i=3:13
    c15(i)=CR(i)-CR(i-1);
end
for i=4:13
    c30(i)=CR(i)-CR(i-2);
end
for i=5:13
    c45(i)=CR(i)-CR(i-3);
end
for i=6:13
    c60(i)=CR(i)-CR(i-4);
end
for i=8:13
    c90(i)=CR(i)-CR(i-6);
end
for i=10:13
    c120(i)=CR(i)-CR(i-8);
end
mprintf("15min               30min               45min              60min          90min          120min");
for i=1:13
    mprintf("\n%f          %f          %f          %f          %f          %f",c15(i),c30(i),c45(i),c60(i),c90(i),c120(i));
end
I=[109.2 91 79.7 74.1 67.6 61.75];    //maximum intensity at respective durations
D=[15 30 45 60 90 120];               //durations
//greph is plotted between I and D
