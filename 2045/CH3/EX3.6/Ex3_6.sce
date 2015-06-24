//example 6 pagenumber 142
clear
v1=150;//volt
vone=300//volt
idmax=40*10^-3;//ampere
idmin=5*10^-3;//ampere
r=(vone-v1)/idmax;
imax=idmax-idmin;
disp('maximum current   =   '+string(imax)+'ampere');
//minimum
zq=1;
while (zq<=2)
    if zq==1 then
        ione=25*10^-3;
        i1=ione+idmin;
        vmin=(i1*r)+v1;
        disp('v1 minimum   =   '+string(vmin)+'volt');
        else
        ione=25*10^-3;
        i1=ione+idmax;
        vmin=(i1*r)+v1;
        disp('v1 maximum   =   '+string(vmin)+'volt');
        
    end
    zq=zq+1;
    
    
    
    
end


