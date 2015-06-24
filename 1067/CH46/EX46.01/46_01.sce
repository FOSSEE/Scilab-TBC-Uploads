clear;
clc;
//for low loads
p1(1)=20;
p2(1)=30;
t1(1)=.1*p1(1)+20;
t2(1)=.12*p2(1)+16;
//when load is further increased
t2(4)=22;
p2(4)=(t2(4)-16)/.12;
t1(4)=t2(4);
//upper limit 125MW
p2(5)=125;
t1(5)=1.12*p2(5)+16;
p1(5)=(t1(5)-20)/.1;
n=7;
t2(1)=19.6;
t2(2)=20;
t2(3)=21;
t2(4)=22;
t2(5)=31;
t2(6)=32;
t2(7)=32.5;
p1(5)=110;
p1(6)=120;
p1(7)=125;
for j=1:4
        p1(j)=20;
end;
mprintf("incremental cost(rs./MWhr)\tloading of unit 1(MW) \t loading of unit 2(MW)\ttotal generating power(MW)");
for i=1:n
    p2(i)=(-16+t2(i))/.12;
    if(t2(i)>=31)
        p2(i)=125;
        end;
    pt(i)=p1(i)+p2(i);
    mprintf("\n%f\t\t\t%f\t\t\t%f\t\t%f",t2(i),p1(i),p2(i),pt(i));
    
end;
