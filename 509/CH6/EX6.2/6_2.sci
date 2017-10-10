//Chapter 6 Example 2//
clc
clear

//total discharge during weeks=td// 
w1=500;w2=500;w3=350;w4=200;w5=300;w6=800;w7=1100;w8=900;w9=400;w10=200;
// these are the weekly discharges respectively for 10 weeks//
td=w1+w2+w3+w4+w5+w6+w7+w8+w9+w10;
printf("\n Total Discharge = %.2f m^3/sec\n",td);
//average weekly discharge=wd//
wd=td/10;
printf("\n Average weekly discharge = %.2f m^3/sec\n",wd);
// to plot the hydrograph//
x=[1,2,3,4,5,6,7,8,9,10];
y=[500,500,350,200,300,800,1100,900,400,200];
plot2d(x,y,style=2,rect=[0,0,10,1100]);
xtitle("Hydrograph","Time(Weeks)","Q(m^3/sec)");
xset('window',1);
// to plot flow duration graph//
a=[10,20,30,50,60,70,90,100];
b=[1100,900,800,500,400,350,300,200];
plot2d(a,b,style=3,rect=[0,0,100,1100]);
xtitle("Flow duration curve","Percentage of time","Q(m^3/sec)");
// to plot mass curve//
xset('window',2);
c=[1,2,3,4,5,6,7,8,9,10];
d=[3500,7000,9450,10850,12950,18550,26250,32550,35350,36750];
plot2d(c,d,style=4,rect=[0,0,10,40000]);
xtitle("Mass Curve","Time(weeks)","Cumulative flow(day-sec-metre)");
legend("Mass Curve","Ordinary Curve");