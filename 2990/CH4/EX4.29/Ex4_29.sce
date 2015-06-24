
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
//part1
Long=150.0;//longitude in degrees
GST=12+25.0/60+15.0/3600;//GST in hr
LST=30+15.0/60+10.0/3600;//LST in hr
LMN=18+15.0/60+10.0/3600;//LMN in hr
//calculation
LMM=GST+Long/15*9.8565/3600;
LMT=LMN-LMM-(LMN-LMM)*9.8296/3600;
LMT=degtodms(LMT)
disp(LMT,"LMT in hr min sec (PM)");
//part2
LMM=GST+Long/15*9.8565/3600;
LMT=LST-LMM-(LST-LMM)*9.8296/3600;
LMT=degtodms(LMT-12)
disp(LMT,"LMT in hr min sec (AM)");
clear()
