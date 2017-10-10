T=15/(s^2+4*s+18)

omegaN=sqrt(18)
zeta=4/(2*omegaN)
disp(omegaN,"omegaN = ")
disp(zeta,"zeta = ")
omegaD=omegaN*sqrt(1-zeta^2)
for(n=1:3)
    t=n*%pi/omegaD
    if(n==2)
        T=t
        disp(t,"t for 1st undershoot = ")
        disp(T,"time period for oscillations = ")
    end
    
end

disp(4/(zeta*omegaN),"Ts = ")
disp(Ts/T,"total number of cycles = ")
disp(1/T," frequency of damped oscillations = ")