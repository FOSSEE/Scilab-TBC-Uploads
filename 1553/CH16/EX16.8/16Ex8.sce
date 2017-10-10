//Chapter 9 Ex 8

clc;
clear;
close;
//let B be closed after x min.Then part filled by(A+B) in x min +part filled by A in (18-x)=1
x=poly(0,'x');
for x=1:10
    if ((x*(1/24+1/32))+((18-x)/24))==1
        break;
    end
end
mprintf("The pipe B should be closed after %d min",x);
