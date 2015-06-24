 // bode p l o t is given in the question we have to find transfer function
s=%s;
sys = syslin('c',48/(s*(s +20)*(s^2+2.52*s +16)))
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
printf("a) At w=1 rad/sec slope changes -20 db/decade indicating a term K/s \n");
printf("b) At w=4 rad/sec slope changes from -20 db/decade to -60 db/decade indicating a term (1+2d/w*s+s^2/w^2)in denominator(net change -40 bd/decade)\n ");
printf("c) At w=10 rad/sec slope changes from -60 db/decade to- 40b/decade indicating a term (1+s/10)in numerator\n");
printf("d) At w=20 rad/sec slope changes from --40 db/decade to- -60b/decade indicating a term (1+s/20)in denominator\n");
printf("e) its also mention 20 logK=3.521")
k=1.5;
disp(K,"K=");
printf("the given transfer function is G(s)=48/(s*(s +20)*(s^2+2.52*s +16))");
