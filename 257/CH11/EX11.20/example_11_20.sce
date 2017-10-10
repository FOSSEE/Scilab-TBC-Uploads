s=poly(0,'s'); 
F=syslin('c',[200/((100+12*s+s^2)*s)]) 


[GainMargin,freqGM]=g_margin(F) //Calculates gain margin [dB] and corresponding frequency [Hz]
disp(GainMargin,"GM=")


[PhaseMargin,freqPM]=p_margin(F) //Calculates phase [deg] and corresponding freq [Hz] of phase margin
disp(PhaseMargin,"PM=")

