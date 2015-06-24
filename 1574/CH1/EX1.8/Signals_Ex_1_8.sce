clc
clear
close
//Chapter 1 Signals
//Example 1.8, page no 24
//given

T=500e-3,w0=2*%pi/T,d=50e-3,A=10
t=-d/2:0.01:T-d/2
t1=-d/2:0.01:d/2
f1=A
t2=d/2:0.01:T-(d/2)
f2=0
a=1
disp('The fourier series coeff Fn are:')
for n=-5:5
    if n==0 then
       Fr(a)=1,Fi(a)=0
    else 
    fa1=f1.*cos(%pi*n*t1/T)
    fa2=f2.*cos(%pi*n*t2/T)
     fb1=f1.*sin(%pi*n*t1/T)
    fb2=f2.*sin(%pi*n*t2/T)
    end
    Fr(a)=1/T*(inttrap(t1,fa1)+inttrap(t2,fa2))
    Fi(a)=1/T*(inttrap(t1,fb1)+inttrap(t2,fb2))
    mag(a)=abs(Fr(a)+%i*Fi(a))
    //  disp(mag(a))
    disp(Fr(a)-%i*Fi(a))
     x(1,size(t,2))=0
    x=x+((Fr(a))-%i*Fi(a)).*(cos(%pi*n*t/T)+%i*sin(%pi*n*t/T))
    a=a+1
    
end
n=-5:5
subplot(3,1,1),plot(t,f1)
xlabel("t", "fontsize", 3);
ylabel("f(t)", "fontsize", 3, "color", "green");
subplot(3,1,2),plot2d3(n,mag,2,rect=[-11,0,11,1])// expo fourier series coeff
xlabel("n", "fontsize", 3);
ylabel("Coeff Magnitude", "fontsize", 3, "color", "red");
subplot(3,1,3),plot2d(t,x,style=3),plot2d(-t,x,style=3) // one sided spectrum with T=500ms
xlabel("w", "fontsize", 3);
ylabel("Fn", "fontsize", 3, "color", "blue");
legends(['Sampling Function(T=500mS)';'Sampling Function(T=250mS)'],[3,5],opt="lr")
T1=T/2
t=-d/2:0.01:T1-d/2
t1=-d/2:0.01:d/2
f1=A
t2=d/2:0.01:T1-(d/2)
f2=0
//The Expo fourier series coeff
for n=-5:5
    if n==0 then
       Fr1(a)=1,Fi1(a)=0
    else 
    fr1=f1.*cos(%pi*n*t1/T1)
    fr2=f2.*cos(%pi*n*t2/T1)
     fi1=f1.*sin(%pi*n*t1/T1)
    fi2=f2.*sin(%pi*n*t2/T1)
    end
    Fr1(a)=1/T1*(inttrap(t1,fr1)+inttrap(t2,fr2))
    Fi1(a)=1/T1*(inttrap(t1,fi1)+inttrap(t2,fi2))
    mag(a)=abs(Fr1(a)+%i*Fi1(a))
    disp(Fr1(a)-%i*Fi1(a))
     y(1,size(t,2))=0
    y=y+((Fr1(a))-%i*Fi1(a)).*(cos(%pi*n*t/T1)+%i*sin(%pi*n*t/T1))
     a=a+1
end
plot2d(t,y, style=5),plot2d(-t,y,style=5)// double sided spectrum with T=250ms

