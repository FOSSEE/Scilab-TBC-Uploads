
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
LAT=15+12.0/60+40.0/3600;//latitude in degrees
Long=20+3.0/60;//longitude in degrees
GMN=5.0/60+10.65/3600;//GMN in hr
//calculation
GAT=LAT+Long/15.0;
e1=(GAT-12)*0.22/3600+GMN;
LAT=GAT+e1-Long/15.0;
LAT=degtodms(LAT);
disp(LAT,"LAT in hr min sec");
clear()
