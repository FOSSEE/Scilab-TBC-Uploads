//Example 2.16 
//To De t e rmine Whether Given S i g n a l i s Pe r i o d i c or not
clc ;
t =0:0.01:2;
x1=exp(%i *6* %pi*t);
subplot (1 ,2 ,1);
plot (t,x1);
xlabel ( ' t ' );
ylabel ( ' x ( t ) ' );
title ( 'CONTINUOUS TIME PLOT' );
n =0:0.2:2;
x2=exp(%i *6* %pi*n);
subplot (1 ,2 ,2);
plot2d3 (n,x2);
xlabel ( ' n ' );
ylabel ( ' x ( n ) ' );
title ( 'DISCRETE TIME PLOT' );
//Hence Given S i g n a l i s Pe r i o d i c wi th N=1
