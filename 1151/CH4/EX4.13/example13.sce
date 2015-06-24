 // bode p l o t
s=%s;
sys = syslin('c',23.7*(1+s)*(1+0.2*s)/(s*(0.1*s +1)*(3*s +1)*(1+0.5*s)))
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
