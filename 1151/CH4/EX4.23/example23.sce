 // bode p l o t %e^(-0.3*s)/(s*(1+s)
s=%s;
sys = syslin('c',1/(s*(1+s))) //%e^(-0.3*s) has no effect on bode plot
bode(sys)
show_margins (sys ,'bode' )
gm= g_margin (sys)
pm= p_margin (sys)
disp (gm ," g a in margin=")
disp (pm ," phas e margin=")
if (gm <=0 | pm <=0)
printf (" system is unstable ")
else
printf (" system is stable ")
end
