
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
delta=22+45.0/60;//declination in degrees
theta=55.0;//latitude in degrees
H=45+15.0/60;//hour angle in degrees
//calculation
alpha=asin((cos(H*%pi/180)+tan(theta*%pi/180)*tan(delta*%pi/180))*cos(theta*%pi/180)*cos(delta*%pi/180));
alpha=alpha*180/%pi;
A=acos(sin(delta*%pi/180)/(cos(theta*%pi/180)*cos(alpha*%pi/180))-tan(alpha*%pi/180)*tan(theta*%pi/180));
A=degtodms(360-A*180/%pi);
disp(A,"azimuth in deg mi sec");
clear()
