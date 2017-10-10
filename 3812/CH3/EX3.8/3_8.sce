//Example 3_8//
//Fourier Series of half-wave rectifier output
//Assume the period of the signal T=1
t=-0.5:0.01:1;
T=1;
for i=1:length(t)
if t(i)<T/2 then
x(i)=sin(2*%pi*t(i));
else
x(i)=0;
end
end
k=-10:10;
for i=1:length(k)
if k(i)==1 then
ak(i)=1/(4*%i);
elseif k(i)==-1
ak(i)=-1/(4*%i);
else
ak(i)=(cos(k(i)*%pi/2)*exp(-k(i)*%pi/2*-%i))/(%pi-(%pi*k(i)*k(i)));
end
end
disp("The fourier series coefficients are")
disp(ak)
disp("magnitude of Fourier series coefficient")
disp(abs(ak))
//Plotting frequency spectrum
subplot(2,1,1)
plot(k,abs(ak),'.');
xtitle("Magnitude Spectrum","k","jakj");
for i=1:length(k)
if k(i)==0|k(i)==3|k(i)==-3|k(i)==-5|k(i)==5 then
phase(i)=0;
elseif k(i)==-1 then
phase(i)=%pi/2;
elseif k(i)==1 then
phase(i)=-%pi/2;
elseif k(i)== -2|k(i)==-4
phase(i)=%pi;
elseif k(i)==2|k(i)==4
phase(i)=-%pi;
end
end
