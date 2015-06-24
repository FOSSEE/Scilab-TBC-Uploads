// bode p l o t
s=%s;
sys = syslin('c',2500/(s*(s +5)*(s +50)))
bode(sys)
show_margins (sys ,' bode ' )
gm= g_margin (sys)
pm= p_margin (sys)
disp (gm ," g a in margin=")
disp (pm ," phas e margin=")
if (gm <=0 | pm <=0)
printf (" sys t em i s u n s t a b l e ")
else
printf (" sys t em i s s t a b l e ")
end
