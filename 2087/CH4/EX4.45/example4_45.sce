

//example 4.45
//compute maximum rainfall intensities for 5,10,15,20,25,30,35,40,45,50 minutes
//plot intensity duration graph
clc;funcprot(0);
//given
CR=[0 1.02 2.08 3.30 4.72 5.58 6.40 7.16 7.88 8.54 9.14];  //cumulative rainfall

c5(2)=CR(2);
c10(3)=CR(3);
c15(4)=CR(4);
c20(5)=CR(5);
c25(6)=CR(6);
c30(7)=CR(7);
c35(8)=CR(8);
c40(9)=CR(9);
c45(10)=CR(10);
c50(11)=CR(11);
for i=3:11
    c5(i)=CR(i)-CR(i-1);
end
for i=4:11
    c10(i)=CR(i)-CR(i-2);
end
for i=5:11
    c15(i)=CR(i)-CR(i-3);
end
for i=6:11
    c20(i)=CR(i)-CR(i-4);
end
for i=7:11
    c25(i)=CR(i)-CR(i-5);
end
for i=8:11
    c30(i)=CR(i)-CR(i-6);
end
for i=9:11
    c35(i)=CR(i)-CR(i-7);
end
for i=10:11
    c40(i)=CR(i)-CR(i-8);
end
for i=11:11
    c45(i)=CR(i)-CR(i-9);
end                                //rainfall in any possible time interval

mprintf("5min               10min            15min             20min             25min              30min             35min             40min             45min             50min");
for i=1:11
    mprintf("\n%f          %f          %f          %f          %f          %f          %f          %f          %f          %f",c5(i),c10(i),c15(i),c20(i),c25(i),c30(i),c35(i),c40(i),c45(i),c50(i));
end
I=[17.04 15.84 14.80 14.16 13.39 12.80 12.27 11.82 11.39 10.97];    //maximum intensity at respective durations
D=[5:5:50];               //durations
//graph is plotted between I and D
