
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
z2=90-40-13.0/60-15.0/3600;//zenith angle in degrees
del2=12+15.0/60+30.0/3600//declination of star in degrees
//calculation
theta=z2+del2;
theta=degtodms(theta);
disp(theta,"altitude in degree,minites,seconds respectively");
clear()
