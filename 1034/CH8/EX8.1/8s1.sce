clear;
clc;
disp("Example 8.1");
k=12320324111220;
p1=123;
p2=203;
p3=241;......//key k partitioned into parts that are 3 decimal long.
p4=112;
p5=20;
///.....using shift folding...
//....partitions are added to get the hash address.
z=p1+p2+p3+p4+p5;
disp(z);
//when folding at the boundaries is used,we reverse p2 and p4.
 p2=302;
 p4=211;
 x=p1+p2+p3+p4+p5;
 disp(x);