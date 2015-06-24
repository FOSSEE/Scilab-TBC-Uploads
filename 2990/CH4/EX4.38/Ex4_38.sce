
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
delta=21.0*%pi/180+25.0/60*%pi/180;//delta in degrees
lat=25+40.0/60;//latitude in degrees
//calculation
H=acos((0-cos(%pi/2-lat*%pi/180)*cos(%pi/2-delta))/sin(%pi/2-lat*%pi/180)*sin(%pi/2-delta));
A=acos(cos(%pi/2-delta)/sin(%pi/2-lat*%pi/180));
H=degtodms(360-H*180/%pi);
A=degtodms(A*180/%pi);
disp(H,"hour angle in deg min sec");
disp(A,"azimuth in deg min sec");
disp("the answer differs slightly due to round off error");
clear()
