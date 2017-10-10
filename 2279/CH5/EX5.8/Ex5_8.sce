//Fourier Series coefficients of half-wave rectifier output
//Assume the period of the signal T=1
t=-0.5:0.01:0.5;
for i=1:length(t)
    if t(i)<-0.25 & t(i)>0.25 then
        x(i)=-1;
    else
        x(i)=1;
    end
end
k=-10:10;
for i=1:length(k)
    if k(i)==0 then
        ak(i)=0;
    else
        ak(i)=(%i*((2-(-1)^k(i))*exp(-%i*k(i)*%pi/2)-exp(%i*k(i)*%pi/2)))/(k(i)*2*%pi);
    end
end

disp("The fourier series coefficients are...")
disp(ak)
plot(k,ak,'.')
xtitle("Fourier Coefficients","k","ak")
