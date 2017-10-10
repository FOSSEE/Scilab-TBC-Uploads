// Chapter 23 Ex7

clc;
clear;
close;
x=1; y=2; z=3;
ans=(1/(log((x)*(y)*(z))/log((x)*(y))))+(1/(log((x)*(y)*(z))/log((z)*(y))))+(1/(log((x)*(y)*(z))/log((x)*(z))));
mprintf("The answer is %d",ans);