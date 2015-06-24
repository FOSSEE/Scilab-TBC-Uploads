

//example 4.58
//calculate ordinates of discharge hydrograph and peak discharge
clc;funcprot(0);
//given
fi=2.5;            //fi index
t=24;
A=200;             //area of catchment
R1=7.5;R2=2.0;R3=5; //rainfall
r1=R1-fi;r2=R2-fi;r3=R3-fi;
r2=0;
r=[5 0 2.5];      //excess rainfall
D=[5 15 40 25 10 5 0 0 0];  //distribution
for i=1:9
    d1(i)=D(i)*r(1)/100;
end
for i=1:8
     d2(i+1)=D(i)*r(2)/100;
end
for i=1:7
     d3(i+2)=D(i)*r(3)/100;
end                                      //distribution run-off for rainfall excess

for i=1:9
    tr1(i)=d1(i)+d2(i)+d3(i);           //total run-off as depth
    tr2(i)=23.148*tr1(i);               //total run-off as discharge
    tr2(i)=round(tr2(i)*1000)/1000;
end
s=0;
for i=1:9
    s=s+tr2(i);
end
mprintf("Total run-off:");
mprintf("\nas depth          as discharge");
for i=1:9
    mprintf("\n%f          %f",tr1(i),tr2(i));
end
r=0.36*s*t/A;
r=round(r*10)/10;
mprintf("\ntotal run-off=%f cm.",r);

