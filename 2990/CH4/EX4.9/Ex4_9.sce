
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
cola=90.0-49.0//colatitude in degrees
code=90.0+19.0//codeclination in degrees
//calculation
A1=acos((cos(code*%pi/180)-cos(cola*%pi/180)*cos(%pi/2))/sin(cola*%pi/180)/sin(%pi/2));
A1=degtodms(360-A1*180/%pi);
H=acos((0-cos(cola*%pi/180)*cos(code*%pi/180))/sin(cola*%pi/180)*sin(code*%pi/180));
H=degtodms(H*180/%pi);
disp(A1,"azimuth in deg min sec");
disp(H,"hour angle in deg min sec");
disp("the hour angle differs slightly due to round off error")
clear()
