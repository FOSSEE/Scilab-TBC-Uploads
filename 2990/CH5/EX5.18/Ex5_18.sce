
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
alpha=21+35.0/60+30.0/3600//mean observed altitude
C=(4.5+5.5-3.5-2.5)/4*15.0/3600;
c=44+30.0/60//colatitude in degrees
z=68+26.0/60+34.0/3600//coaltitude in degrees
p=94+4.0/60+15.0/3600//codeclination in degrees
s=(c+p+z)/2;
//calculation
cr=-58/3600/tan(alpha)//correction refraction
cp=8.8/3600*cos(alpha)//correction parallax
alpha=alpha+C+cr+cp// corrected altitude
A=2*atan(sqrt(sin((s-z)*%pi/180)/sin(s*%pi/180)*sin((s-c)*%pi/180)/sin((s-p)*%pi/180)));
A=A*180/%pi;
Mh=(121+45.0/60+20.0/3600+122+47.0/60)/2//mean horizontal angle
AZ=360-Mh-A;
AZ=degtodms(AZ);
disp(AZ,"Azimuth from north(clockwise) in degree,minites,seconds respectively");
disp("the answer varies slightly due to round off error")
clear()
