//EXAMPLE 5_10
//conjugate symmetric & anti-symmetric parts of complex sequence
clear;
clc;
un=[1+%i*4,-2+%i*3,4-%i*2,-5-%i*6];
disp(un,'u[n] = ');
u1=conj(un);
disp(u1,'u*[n] = ');
//modulo-4 circularly time reversed version:
disp(pmodulo(0,4),'u[<-0>4] = ');
disp(pmodulo(-1,4),'u[<-1>4] = ');
disp(pmodulo(-2,4),'u[<-2>4] = ');
disp(pmodulo(-3,4),'u[<-3>4] = ');
un1=[u1(pmodulo(-0,4)+1),u1(pmodulo(-1,4)+1),u1(pmodulo(-2,4)+1),u1(pmodulo(-3,4)+1)];
disp(un1,'u*[<-n>4] = ');
disp(0.5*(un+un1),'ucs[n] = ');
disp(0.5*(un-un1),'uca[n] = ');
