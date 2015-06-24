
//To Determine the slip at maximum torque and at full load
//Page 205
clc;
clear;

Tl=1; //Assume that the Full Load torque is unity
Tst=125*Tl/100; //Starting Torque
Tmax=275*Tl/100; //Maximum Torque
si=1; //At the Start
RT=Tst/Tmax; //Ratio of Starting Torque and Maximum Torque
//R1 is negligible, elminating the terms with R1 and hence formulating the starting torque and Maximum Torque we get

// Tst/Tmax = 2*sTmax*s/((sTmax^2)+(s^2))
//Where sTmax is the Slip at Maximum Torque and s is the slip at the start

sTmx=poly(0,'sTmx'); //Variable Value of slip at Maximum Torque

X=RT-(2*sTmx*si/((sTmx^2)+(si^2))); //Polynomial to find sTmax

sTmx=roots(X(2));

//Condition to find the value of sTmax less than 1
if(floor(sTmx(1))==0)
    sTmx=sTmx(1);
else
    sTmx=sTmx(2);
end

s=poly(0,'s'); //Variable value of slip for Starting torque at full load

Y=(Tl/Tmax)-(2*sTmx*s/((sTmx^2)+(s^2))); //Polynomial to find s

s=roots(Y(2)); //Numerical Value of s
//Condition to find the value of s less than 1
if(floor(s(1))==0)
    s=s(1);
else
    s=s(2);
end

printf('i) The Slip at Maximum Torque is %g\n',sTmx)
printf('ii) The Slip at Full Load is %g\n',s)
