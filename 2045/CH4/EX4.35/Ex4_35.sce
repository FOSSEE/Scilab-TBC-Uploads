//example 35
clear
vbb=4;//volt
ib=50*10^-6;//ampere
for q=[0 0.7 4 12];
    if q==0 then
        rb=(vbb-q)/ib;
        disp("resistance at "+string((q))+"volt   "+string((rb))+"ohm");
    elseif q==0.7
        rb=(vbb-q)/ib;
        disp("resistance at "+string((q))+"volt   "+string((rb))+"ohm");
    elseif q==4
        disp("vbb at 12volt");
        q=0;
        vbb=12;
        rb=(vbb-q)/ib;
        disp("resistance at "+string((q))+"volt   "+string((rb))+"ohm");
    else
        q=0.7;
        vbb=12;
        rb=(vbb-q)/ib;
        
        
        disp("resistance at "+string((q))+"volt   "+string((rb))+"ohm");
    end
end



