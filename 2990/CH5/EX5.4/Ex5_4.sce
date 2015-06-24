
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
LMT=21+23.0/60+05.0/3600//local chronometer time
Long=65.0+19.0/60//longitude in hr
GST=13+15.0/60+20.0/3600;//GST in hr
RA=9+32.0/60+15.0/3600;//RA in hr
Long2=82.0+30.0/60//longitude of India
//calculation
e1=Long/15*9.8565/3600//error
SIT=RA+24-GST+e1//sidereal time interval after LMM
e2=SIT*9.8296/3600//error
MI=SIT-e2//mean interval after LMM
LMT=LMT-(Long2-Long)/15.0;
CE=MI-LMT;
CE=degtodms(CE);
disp(CE,"chronometer error in hours,min,sec respectively (fast)");
clear()
