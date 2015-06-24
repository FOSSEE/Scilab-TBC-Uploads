

//example 4.28
//calculate ordinates of storm hydrograph
clc;funcprot(0);
//given
fi=2.5;          //infiltration index
B=10;            //Base flow
O=[0 110 365 500 390 310 250 235 175 130 95 65 40 22 10 0 0 0];   //ordinates of unit hydrograph
R1=2;R2=6.75;R3=3.75;
r1=(R1*10-(fi*3)-5)/10;             //rainfall excess in first three hour
r2=(R2*10-(fi*3))/10;               //rainfall excess in second three hour
r3=(R3*10-(fi*3))/10;               //rainfall excess in third three hour

for i=1:18
    s1(i)=r1*O(i);                
end
for i=2:18
    s2(i)=r2*O(i-1);
end
for i=3:18
    s3(i)=r3*O(i-2);
end                                 //surface run-off from rainfall excess during succesive unit periods
mprintf("ordinates of storm hydrograph");
for i=1:18
    T(i)=s1(i)+s2(i)+s3(i);
    t(i)=T(i)+B;
    t(i)=round(t(i)*10)/10;
    mprintf("\n%f",t(i));
end


