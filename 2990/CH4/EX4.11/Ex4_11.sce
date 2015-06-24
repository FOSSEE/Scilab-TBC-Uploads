
funcprot(0);
// Initialization of Variable
function[dms]=degtodms(deg)
    d = int(deg)
    md = abs(deg - d) * 60
    m = int(md)
    sd = (md - m) * 60
    sd=round(sd*100)/100
    if sd==60 then
        m=m+1
        sd=0
        end
    dms=[d m sd]
endfunction
theta=42+50.0/60;//latitudde in degrees
delta=83+40.0/60;//declination in degrees
//calculation
z=180-delta-theta;
alpha=90-z;
z=degtodms(z);
alpha=degtodms(alpha);
disp(z,"zenith distance in deg min sec");
disp(alpha,"altitude in deg min sec");
clear()
