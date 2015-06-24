//stability of closed loop systems
z=%z
sys1=syslin('c',5*z/((z-0.2)*(z-0.8)))
disp(sys1,"M(z)=")
printf("sys1 is stable")
sys2=syslin('c',5*z/((z+1.2)*(z-0.8)))
disp(sys2,"M(z)=")
printf("sys2 is unstable due to pole at z=-1.2")
sys3=syslin('c',5*(z+1)/(z*(z-1)*(z-0.8)))
disp(sys3,"M(z)=")
printf("sys3 is marginally stable due to z=1")
sys4=syslin('c',5*(z+1.2)/(z^2*(z+1)^2*(z+0.1)))
disp(sys4,"M(z)=")
printf("sys4 is unstable due to multiple order pole at z=-1")