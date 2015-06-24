

//example 4.25
//calculate average depth of hourly rainfall excess
clc;funcprot(0);
//given
r=[2.0 2.5 7.6 3.8 10.6 5.0 7.0 10.0 6.4 3.8 1.4 1.4];     //rainfall depths
A1=20;
A2=40;
A3=60;
A=A1+A2+A3;
fi1=7.6;
fi2=3.8;
fi3=1.0;
for i=1:12
    R1(i)=r(i)-fi1;             //rainfall excess
    R2(i)=r(i)-fi2;
    R3(i)=r(i)-fi3;
    if (R1(i)<0)  then
    R1(i)=0;
end
if (R2(i)<0)  then
    R2(i)=0;
end
if (R3(i)<0)  then
    R3(i)=0;
end
end
mprintf("average depth of hourly rainfall excess(cm/hr)");
for i=1:12
    a1(i)=R1(i)*A1/A;                    //average rainfall excess
    a2(i)=R2(i)*A2/A;
a3(i)=R3(i)*A3/A;
T(i)=a1(i)+a2(i)+a3(i);               //total hourly rainfall excess
T(i)=round(T(i)*100)/100;
mprintf("\n%f",T(i));
end



