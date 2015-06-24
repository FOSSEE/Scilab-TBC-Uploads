

//example 4.7
//construct hyetograph
clc;funcprot(0);
//given
c=[0 12.4 22.1 35.1 52.7 63.7 81.9 109.2 123.5 132.6 143.3 146 146];  //cumulative rainfall
T=[0:1:13];          //Time
t=15/60;            //time interval
r(1)=0;
mprintf("Rainfall intensity:");
I(1)=0;
for i=2:13
  r(i)=c(i)-c(i-1);  
   I(i)=r(i)/t;          //Rainfall intensity
mprintf("\n%f",I(i));
end

//graph is plotted between I and T
