s=%s
Mr=2                   //given
omegaR=3               //given
zeta=roots(16*s^4 - 16*s^2 + 1)                        //Mr=1/(2*zeta*sqrt(1-zeta^2))
zeta(3,1)=0.933
zeta(2,1)=0.0669
disp(zeta)

omegaN=omegaR/(sqrt(1-2*(0.2588)^2))
disp(omegaN,"omegaN = ")

TF= (omegaN^2)/poly([omegaN^2 2*0.2588*omegaN  1],'s',"coeff")
disp(TF," transfer function = ")

omegaD=omegaN*sqrt(1-(0.2588))
Tr=(%pi-(atan(sqrt(1-(0.2588)^2)/0.2588)))/(omegaD)
disp(Tr,"Tr = ")

Tp=%pi/omegaD;
disp(Tp,"Tp= ")

Ts=4/(0.2588*omegaN)
disp(Ts,"Ts = ")

Tosc=2*%pi/omegaD
disp(Tosc,"Tosc = ")

N=Ts/Tosc;
disp(N,"number of oscillations = ")

Mp=%e^(-0.2588*%pi/(sqrt(1-(0.2588)^2)))
disp(Mp,"Mp = ")