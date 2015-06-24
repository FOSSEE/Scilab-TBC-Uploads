
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    dms=[d m sd]
endfunction
theta=35+15.0/60+20.0/3600;//theta in degrees
delta=88+15.0/60+45.0/3600;//delta in degrees
RA=1+45.0/60+15.0/3600;//R.A. in degrees 
//calculation
H=acos(tan(theta*%pi/180)/tan(delta*%pi/180));
H=H*180/%pi/15;
LST=RA+H;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
clear()
