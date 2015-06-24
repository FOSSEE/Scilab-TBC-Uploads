 // bode p l o t is given already in the question w have to solve the folowing parts
s=%s;
sys = syslin('c',10^5/((0.2*s+1)*(0.025*s +1)*(0.01*s +1)))
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
printf("a) At w=5 rad/sec slope changes -20 db/decade indicating a term (1+s/5)or(1+0.2*s)in denominator");
printf("b) At w=40 rad/sec slope changes -60 db/decade indicating a term (1+s/40)^2in denominator(net change -40 bd/decade)");
printf("c) At w=100 rad/sec slope changes - d80b/decade indicating a term (1+s/100)or(1+0.01*s)in denominator");
printf("d) its also mention 20 logK=100")
k=10^5;
disp(K,"K=");
printf("the given transfer function is G(s)=10^5/((0.2*s+1)*(0.025*s +1)*(0.01*s +1))");
p1=-(atan(5*0.2)+2*atan(0.025*5)+atan(0.01*5));
p2=-(atan(40*0.2)+2*atan(0.025*40)+atan(0.01*40));
p3=-(atan(100*0.2)+2*atan(0.025*100)+atan(0.01*100));
disp(p1," at w=5 rad /sec phase change is");
disp(p2," at w=40 rad /sec phase change is");
disp(p3," at w=5 rad /sec phase change is");
