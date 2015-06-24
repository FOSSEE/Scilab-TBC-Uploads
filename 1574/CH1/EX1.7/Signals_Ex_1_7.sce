clc
close
clear
//Chapter 1 Signals
//Example 1.7, page no 22
//given
V=1
t0=1,T=1,w0=2*3.14/T,P=1
t=0:0.01:3
f=V*abs(sin(%pi*t))
//The Expo fourier series coeff
disp('The Expo fourier series coeff are: for n=-5 to 5')
a=1
for n=-5:5
    fr=f.*cos(%pi*n*t/T)
    Fr(a)=inttrap(t,fr)
    fi=f.*sin(%pi*n*t/T)
    Fi(a)=inttrap(t,fi)

    mag(a)=abs(Fr(a)+%i*Fi(a))

    disp(Fr(a)-(%i*Fi(a)))
    x(1 ,size(t,2))=0
    x=x+((Fr(a))-%i*Fi(a)).*(cos(%pi*n*t/T)+%i*sin(%pi*n*t/T))
    a=a+1
end
mprintf('The given function in Expo Fourier series can be represented as \n')
mprintf('f(t)= 2V/pi -2V*exp(j2*pi*t)/3*pi -2V*exp(j2*pi*t)/15*pi\n      -2V*exp(j2*pi*t)/35*pi ...\n     -2V*exp(-j2*pi*t)/3*pi -2V*exp(-j2*pi*t)/15*pi...')
n=-5:5
subplot(2,1,1),plot2d(t,f,style=5)// Rectified sine function Plot
xlabel("t", "fontsize", 2);
ylabel("sin(t)", "fontsize", 3, "color", "blue");
subplot(2,1,2),plot2d3(n,mag,12,rect=[-11,0,11,1],style=4)//Plot of the magnitude of the Fourier coeff
xlabel("w", "fontsize", 2);
ylabel("Fn", "fontsize", 3, "color", "red");
legends(["sin(%pi*t)";"Expo Fourier Coeff"],[5,4], with_box=%f, opt="lr" )

