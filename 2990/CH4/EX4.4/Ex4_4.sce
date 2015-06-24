
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
coal=90.0-28.0-24.0/60;//coaltitude in degrees
cola=90.0-48.0-30.0/60;//colatitude in degrees
//calculation
delta=%pi/2-acos((cos(coal*%pi/180)*cos(cola*%pi/180)+sin(coal*%pi/180)*sin(cola*%pi/180)*cos(50*%pi/180)));
H=acos(cos(coal*%pi/180)/(sin(cola*%pi/180)*cos(delta))-tan(delta)/tan(cola*%pi/180));
Ho=degtodms(H*180/%pi);
delta=degtodms(delta*180/%pi)
disp(Ho,"H in deg min sec");
disp(delta,"declination in deg mi sec");
clear()
