

//example4.21
//calculateeffective rainfall hyetograph and volume of diret run-off
clc;funcprot(0);
//given
A=8.6;                                    //catchment area
T=[0:0.5:4];                              //time
r=[0 0.4 1.1 2.3 3.8 4.8 5.6 6.2 6.7];    //accumulated rainfall
fi=0.4;                                   //fi index
dt=0.5;                                   //time interval
d(1)=0;
for i=2:9
    d(i)=r(i)-r(i-1);                 //accumulated rainfall
end
mprintf("Intensity of effective Rainfall:");
I(1)=0;
s=0;
for i=2:9
    p(i)=d(i)-fi;                //effective rainfall
    I(i)=p(i)/dt;                //Intensity of effective Rainfall
    s=s+I(i);
    mprintf("\n%f",I(i));
end
//graph is plotted between I and T
run=s*dt;
V=run*A*10000;
mprintf("\nVolume of direct run-off=%f cubic metre.",V);
