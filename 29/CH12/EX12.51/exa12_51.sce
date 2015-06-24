//caption:root_locus_and_gain,phase_margin
//example 12.51
//page 580
s=%s;
K=3.46
G=K/(s*(s+1)*(s+2))
G=syslin('c',G)
clf();
evans(G,20)
xgrid(2)
[gm,freq_gm]=g_margin(G)
[pm,freq_pm]=p_margin(G)
disp(gm,"gain_margin=",freq_gm*2*%pi,"gain_margin_freq=")
disp(pm,"phase_margin=",freq_pm*2*%pi,"phase_margin_freq=")
