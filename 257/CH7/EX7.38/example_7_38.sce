Mp=0.5/2 *100;
zeta=0.4036;

for(n=0:3)
    T=n*%pi/omegaD
    if(n==2)
        T=0.2
        omegaN=2*%pi/(T*(sqrt(1-zeta^2)))
        disp(omegaN," omegaN = ")
    end
end


        