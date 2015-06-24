Iav=1/(2*%pi)*integrate('20*sin(wt)','wt',%pi/3,%pi)
disp(Iav)

Irms=sqrt(1/(2*%pi)*integrate('(20*sin(wt))^2','wt',%pi/3,%pi))
disp(Irms)