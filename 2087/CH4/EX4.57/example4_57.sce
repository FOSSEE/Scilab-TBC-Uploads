

//example 4.57
//calculate ordinates of storm hydrograph
clc;funcprot(0);
//given
fi=0.25;          //infiltration index
B=20;            //Base flow
O=[0 20 60 150 120 90 70 50 30 20 10 0 0 0];   //ordinates of unit hydrograph
R1=5;R2=0.8;R3=3;
r1=R1-(fi*4);                                 //rainfall excess in first four hour
r2=R2-(fi*4);                                 //rainfall excess in second four hour
r3=R3-(fi*4);                                 //rainfall excess in third four hour
if r2<0
    r2=0;
    end 

for i=1:14
    s1(i)=r1*O(i);
end
for i=2:14
    s2(i)=r2*O(i-1);
end
for i=3:14
    s3(i)=r3*O(i-2);
end                                           //surface run-off from rainfall excess during succesive unit periods
mprintf("ordinates of storm hydrograph");
for i=1:14
    T(i)=s1(i)+s2(i)+s3(i);             //sub-total
    t(i)=T(i)+B;                        //ordinate of flood hydrograph
    mprintf("\n%i",t(i));
end
