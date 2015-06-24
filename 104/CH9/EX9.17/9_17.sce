//relative stability
s=%s;
sys=syslin('c',(100)*(s+5)*(s+40)/(s^3*(s+100)*(s+200)))//K=1
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