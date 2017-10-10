clc;
eff_C=0.85; // Isentropic efficiency of the compressor
rp=4; // Pressure ratio
r=1.4; // specific heat ratio
eff_pc=(((r-1)/r)*log (rp))/log (((rp^((r-1)/r)-1)/eff_C)+1);
disp ("%",eff_pc*100,"Polytropic efficiency = ");
disp ("variation of compressor efficiency with compression ratio is shown in window1");
xset('window',1);
function eff_c=f(rc)
    eff_c=(rc^0.286-1)/(rc^0.326-1);
endfunction
rc=linspace (2,10,4);
plot(rc,f);
title ("variation of compressor efficiency with compression ratio","fontsize",4,"color","blue");
xlabel("compression ratio (rc)","fontsize",4,"color","blue");
ylabel ("Compressor efficiency","fontsize",4,"color","blue");
