

//example4.29
//derive and plot 6 hr unit hydrograph
clc;funcprot(0);
//given
A=103.4;      //area of basin
t=[0:3:36];   //time
q=[0 21 80 82 189 123 184 87 55.5 25.25 9 6 0];  //flow
mprintf("ordinates of unit hydrograph are:");
u(1)=0;
u(2)=q(2)/2;
u(3)=(q(3)-4*u(1))/2;
u(4)=(q(4)-4*u(2))/2;
for i=5:9
    u(i)=(q(i)-3*u(i-4)-4*u(i-2))/2;      //ordinates of unit hydrograph
end
for i=1:9
    mprintf("\n%f",u(i));
end
mprintf("\n\nThe succesive unit hydrograph will have same ordinates but will be shifted\nlaterally by 6 hrs.");
//graph is plotted between u and t.
