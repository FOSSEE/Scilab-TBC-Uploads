
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
RA=22+25.0/60+10.0/3600;//R.A. in hr
ST=14+45.0/60//sidereal time in hr
Long=90.0;//longitude in degrees
GMT=27+15.0/60;//GMT in hr
LMN=15+21.0/60+15.0/3600;//LST of LMN in hr
//calculation
MT=12+24-GMT+Long/15//mean time interval
acc=9.8565/3600*MT;
HA=LMN-acc-MT;
LST=HA+24-RA;
LST=degtodms(LST);
disp(LST,"LST in hr min sec");
clear()
