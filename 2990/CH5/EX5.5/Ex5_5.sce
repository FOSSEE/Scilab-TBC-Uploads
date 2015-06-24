
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
MST=12+32.0/60+15.0/3600//mean sidereal time in hr
RA=15+45.0/60+10.0/3600;//RA in hr
theta=55+14.0/60+20.0/3600//latitude
delta=15+24.0/60+30.0/3600//declination
alpha=35+44.0/60+10.0/3600//zenith distance
//calculation
c=90-theta;
p=90-delta;
z=90-alpha;
H=acos(cos(z*%pi/180)/sin(c*%pi/180)/sin(p*%pi/180)-1/(tan(p*%pi/180)*tan(c*%pi/180)))
H=H/15*180/%pi;
LST=RA-H;
CE=MST-LST;
CE=degtodms(CE);
disp(CE,"chronometer error in hours,min,sec respectively (fast)");
clear()
