Mp=0.12            //given from table
zeta=0.5594
Tp=0.2

omegaN=%pi/(Tp*sqrt(1-zeta^2));
disp(omegaN,"omegaN = ")

Mr=1/(2*zeta*sqrt(1-zeta^2))
disp(Mr,"Mr = ")


omegaR=omegaN*(sqrt(1-2*(zeta)^2))
disp(omegaR," omegaR= ")

