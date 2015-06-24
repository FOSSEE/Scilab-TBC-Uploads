//bode plot
s=%s;
sys=syslin('c',(2500)/(s*(s+5)*(s+50)))
bode(sys)
show_margins(sys,'bode')
gm=g_margin(sys)
pm=p_margin(sys)
disp(gm,"gain margin=")
disp(pm,"phase margin=")
if (gm<=0 | pm<=0)
  printf("system is unstable")
else 
  printf("system is stable")
  end 