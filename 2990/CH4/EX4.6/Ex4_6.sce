
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
coal=42.0;//coalatitude in degrees
code=100+40.0/60//co-declination in degrees
//calculation
alpha=%pi/2-acos((cos(coal*%pi/180)*cos(code*%pi/180)+sin(coal*%pi/180)*sin(code*%pi/180)*cos(35*%pi/180)));
A=acos((cos(code*%pi/180)-cos(coal*%pi/180)*cos(%pi/2-alpha))/(sin(coal*%pi/180)*sin(%pi/2-alpha)));
A=degtodms(A*180/%pi);
alpha=degtodms(alpha*180/%pi);
disp(A,"azimuth in deg min sec towards east is:");
disp(alpha,"alpha in deg min sec");
clear()
