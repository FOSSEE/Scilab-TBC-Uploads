 // bode p l o t is given in the question we have to find transfer function
s=%s;
sys = syslin('c',20*s/((s+1)*(s +10)))
bode(sys)
show_margins (sys ,'bode')
gm= g_margin (sys)
pm= p_margin (sys)
disp (gm ," g a in margin=")
disp (pm ," phas e margin=")
if (gm <=0 | pm <=0)
printf (" system is unstable ")
else
printf (" system is stable ")
end
printf("a) First line has a slope of 20 db/decade indicating a term in numerator ");
printf("b) At w=1 rad/sec slope changes from +20 db/decade to 0 db/decade indicating a term (s+1)in denominator(net change 0 bd/decade)");
printf("c) At w=10 rad/sec slope changes from 0 db/decade to- 20b/decade indicating a term (1+s/10)in denominator");
printf("e) its also mention 20 logK=6")
k=2;
disp(K,"K=");
printf("the given transfer function is G(s)=20*s/((s+1)*(s +10)))");
