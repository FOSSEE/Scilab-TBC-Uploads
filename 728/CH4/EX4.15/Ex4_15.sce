//Caption:Calculate what modes propagate at free space wavelength of (i)10 cm,(ii)5 cm
//Exa:4.15
clc;
clear;
close;
c=3*10^10;//in cm/s
wl_c_TE10=16;//Critical wavelength of TE10
wl_c_TM11=7.16;//Critical wavelength of TM11
wl_c_TM21=5.6;//Critical wavelength of TM21
//For (i): 10 cm
wl_o=10;//in cm
disp(wl_o,'For free space wavelength (in cm) =');
if(wl_c_TE10>wl_o)
    disp('    TE10 can propagate');
else
    disp('    TE10 cannot propagate');
end
if(wl_c_TM11>wl_o)
    disp('    TM11 can propagate');
else
    disp('    TM11 cannot propagate');
end
if(wl_c_TM21>wl_o)
    disp('    TM21 can propagate');
else
    disp('    TM21 cannot propagate');
end
//For (ii): 5 cm
wl_o=5;//in cm
disp(wl_o,'For free space wavelength (in cm) =');
if(wl_c_TE10>wl_o)
    disp('    TE10 can propagate');
else
    disp('    TE10 cannot propagate');
end
if(wl_c_TM11>wl_o)
    disp('    TM11 can propagate');
else
    disp('    TM11 cannot propagate');
end
if(wl_c_TM21>wl_o)
    disp('    TM21 can propagate');
else
    disp('    TM21 cannot propagate');
end