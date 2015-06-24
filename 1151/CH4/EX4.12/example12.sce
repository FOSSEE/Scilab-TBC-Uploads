 // bode p l o t
s=%s;
sys = syslin('c',50/(s*(0.25*s +1)*(0.1*s +1)))
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
