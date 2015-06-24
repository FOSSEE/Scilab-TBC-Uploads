

//example4.26
//derive the unit hydrograph
clc;funcprot(0);
//given
A=92;                   //area of drainage basin
t=[6 8 10 12 14 16 18 20 22 24 2 4 6 8 10 12 14 16];   //time
r=[10.6 9.7 107.8 175.6 193.9 150.3 126.2 106.9 90 72.8 58.2 48 36.2 28.4 20.2 14 10.2 10.4];  //total run-off
B=[10.6 9.7 9.73 9.77 9.8 9.83 9.87 9.9 9.93 9.97 10 10.03 10.07 10.10 10.13 10.16 10.20 10.40];  //base flow
s=0;
for i=1:18
    d(i)=r(i)-B(i);               //direct run-off ordinate
s=s+d(i);
end
n=0.36*s*2/A;
mprintf("ordinates of unit hydrograph:");
for i=1:18
    u(i)=d(i)/n;                  //ordinates of unit hydrograph
    u(i)=round(u(i)*100)/100;
     mprintf("\n%f",u(i));
end
mprintf("\nHydograph is 4-hr unit hydrograph");
//graph is plotted between:
//r and t
//u and t
