//chapter 23 Ex 2

clc;
clear;
close;

//(i)
n1=1; n2=7;
ans1=log(n1)/log(n2);
mprintf("log %d to base %d is %d",n1,n2,ans1);

//(ii)
n3=34; n4=34;
ans2=log(n3)/log(n4);
mprintf("\n log %d to base %d is %d",n3,n4,ans2);

//(iii)
base=36; n5=4; n6=6;
power=log(n5)/log(n6);
ans3=base^power;
mprintf("\n The ans is %.0f",ans3);
