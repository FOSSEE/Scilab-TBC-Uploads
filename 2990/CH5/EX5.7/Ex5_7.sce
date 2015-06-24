
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=(round(sd*100)/100)
      dms=[d m sd]
endfunction
LMM=15+9.0/60+5.21/3600// mean LMT
GMT=10+9.0/60+3.76/3600;//GMT in hr
Long=75.0//longitude
alpha=42+30.0/60+42.0/3600;//angle in degrees
theta=34+48.0/60+12.0/3600;//angle in degrees
delta=15+36.0/60+48.0/3600;//angle in degrees
//calculation
H=acos(sin(alpha*%pi/180)/cos(theta*%pi/180)/cos(delta*%pi/180)-(tan(delta*%pi/180)*tan(theta*%pi/180)))
H=H/15*180/%pi;
GAT=12+H-Long/15;
LMT=GAT+Long/15-5.0/60-40.0/3600;
CE=LMM-LMT;
CE=degtodms(CE);
disp(CE,"chronometer error in slower side in hours,min,sec respectively (fast)");
clear()
