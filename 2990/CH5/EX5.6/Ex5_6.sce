
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
LMTe=6+34.0/60+18.0/3600//  LMT east
LMTw=8+58.0/60+2.0/3600// LMT west
RA=16+11.0/60+25.0/3600;//RA in hr
Long=125+33.0/60;//Longitude
GST=8+25.0/60+14.0/3600;//GST in hr
//calculation
e1=Long/15*9.8565/3600//error
SIT=RA-GST+e1//sidereal time interval after LMM
e2=SIT*9.8296/3600;
MI=SIT-e2//mean time interval after LMM
LMTav=(LMTe+LMTw)/2//mean LMT
CE=LMTav-MI;
CE=degtodms(CE);
disp(CE,"chronometer error in slower side in hours,min,sec respectively (slow)");
clear()
