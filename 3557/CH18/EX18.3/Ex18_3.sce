//Example18.3//

x=[6*10^4 1*10^4 0 -1*10^4 -2*10^4 -3*10^4 -4*10^4 -5*10^4 -6*10^4 -6*10^4 -1e4 0 1e4 2e4 3e4 4e4 5e4 6e4]
y=[0.65 0.58 0.56 0.53 0.46 0.30 0 -0.44 -0.65 -0.65 -0.58 -0.56 -0.53 -0.46 -0.30 0 0.44 0.65]
plot2d(x,y, style=1)
xlabel("H(10^4 A/m)", "fontsize", 2);
ylabel("Br(web/m2");
mprintf("(b) The remanent induction Br =0.56 weber/m^2 at (H = 0)")
mprintf("\n(c) The coercive field Hc = -4*10^4 amperes/m (at B= 0)")
