
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
theta=33.0+42.0/60.0+34.0/3600.0;//latitude in degrees
delta=81.0+55.0/60.0+14.0/3600.0;//declination in degrees
//calculation
H1=acos(tan(theta*%pi/180)/tan(delta*%pi/180));
H1=degtodms(360-H1*180/%pi);
alpha=asin(sin(theta*%pi/180)/sin(delta*%pi/180));
alpha=degtodms(alpha*180/%pi);
A=asin(cos(delta*%pi/180)/cos(theta*%pi/180));
A=degtodms(A*180/%pi);
disp(A,"azimuth in deg min sec");
disp(alpha,"alpha in deg min sec");
disp(H1,"hour angle in deg min sec");
disp("the answer of azimuth differs slightly due to roundoff error and slight mistake in the book")
clear()
