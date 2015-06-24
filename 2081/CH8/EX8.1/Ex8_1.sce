Y=2//prpogation path-loss exponent
r2=10^3
r1=10
delPr=20*log10(r2/r1)^2//log(r2/r1)*20dB/decade
disp(delPr,'difference between the recieved signal strength (in dB)')
imp=delPr+20//impact
disp(imp,'effect of shadow fading causes difference between the recieved signal strength to exceed to (in dB)')
outrad=40//out of bound radiations
disp(imp-outrad,'IMPACT is out-of-bound radiations exceeds the desired signal strength by (in dB)')
