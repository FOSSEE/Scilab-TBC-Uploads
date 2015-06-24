clc;
m_EtOH=46;
aof=1/m_EtOH;
m_a=28.96;
AF=8.957;
aoa=AF/m_a;

Total=aof+aoa;
p0=aof/Total;

//from table
t1=20;
t2=30;
p1=0.0584;
p2=0.1049;

t=t1+[(p0-p1)/(p2-p1)]*(t2-t1);
disp("C",t,"minimum temperature of the mix is:");
