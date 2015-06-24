
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
alt=23+40.0/60;//altitude of star in degrees
azi=145.0;//azimuth of star in degrees
lat=50.0;//latitude in degrees
//calculation
delta=%pi/2-acos(cos(%pi/2-lat*%pi/180)*cos(%pi/2-alt*%pi/180)+sin(%pi/2-lat*%pi/180)*sin(%pi/2-alt*%pi/180)*cos(azi*%pi/180));
H=acos((cos(%pi/2-alt*%pi/180)-cos(%pi/2-lat*%pi/180)*cos(%pi/2-delta))/sin(%pi/2-lat*%pi/180)*sin(%pi/2-delta))
H=degtodms(360-H*180/%pi);
delta=degtodms(delta*180/%pi);
disp("there is a calculation mistake in calculating H in the book");
disp(delta,"declination in deg min sec");
disp(H,"hour angle in deg min sec");
clear()
