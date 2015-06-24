clear;
clc;
xdo = 0.98;               //per cent of ortho top product
xwo = 0.125;              //per cent of ortho bottom product

function[f]=product(x)
    f(1) = 100 - x(1) - x(2);      //x(1) is D and x(2) is W
    f(2) = 60 - x(1)*xdo - x(2)*xwo;
    funcprot(0);
endfunction
x = [0,0];
y = fsolve(x,product)
printf("\n D = %.2f kmol & W = %.2f kmol",y(1),y(2));

printf("\n Let us assume that the distillate contains 0.6 mole per cent meta and 1.4 mole per cent para");
printf("\n Component        Feed                       Distillate                 Bottoms         ");
printf("\n           (kmol)   (mole per cent)     (kmol)  (mole per cent)   (kmol)    (mole per cent)  ");
printf("\n Ortho  %.3f      %.2f               %.2f       %.2f                   %.2f          %.2f         ",60,60,y(1)*0.98,98,y(2)*0.125,12.5);
printf("\n Meta   %.3f         %.2f                   %.2f       %.2f                     %.2f          %.2f         ",4,4,y(1)*0.006,0.6,y(2)*0.083,8.3);
printf("\n Para   %.3f      %.2f                  %.2f      %.2f                    %.2f         %.2f        ",36,36,y(1)*0.014,1.4,y(2)*0.792,79.2);

ao = 1.7;             //relative volatility of ortho relative to para
am = 1.16;            //relative volatility of meta relative to para
ap =1;                //relative volatility of para w.r.t. to itself
xso = 0.125;
xsm = 0.083;
xsp = 0.792;
xwo = 0.125;
xwp = 0.083;
xwm = 0.792;
yso = ao*xso/(ao*xso+ap*xsp+am*xsm);
ysm = am*xsm/(ao*xso+ap*xsp+am*xsm);
ysp = ap*xsp/(ao*xso+ap*xsp+am*xsm);
//Equations of operating lines
//Above the feed point
Ln = 5*y(1);          //Liquid downflow
Vn = 6*y(1);          //Vapour up
//Assuming the feed is liquid at its boiling point
F = 100;           //feed
Lm = Ln+F;         //liquid downflow
Vm = Lm-y(2);      //Vapour up
x1o = poly([0],'x1o');
x11 = roots(yso - (Lm/Vm)*x1o + (y(2)/Vm)*xwo);
x1p = poly([0],'x1p');
x12 = roots(ysp - (Lm/Vm)*x1p + (y(2)/Vm)*xwp);
x1m = poly([0],'x1m');
x13 = roots(ysm - (Lm/Vm)*x1m + (y(2)/Vm)*xwm);
x1 = [x11 x13 x12];
ax1 = [ao*x11 am*x13 ap*x12];
y1 = [ax1(1)/(ax1(1)+ax1(2)+ax1(3)) ax1(2)/(ax1(1)+ax1(2)+ax1(3)) ax1(3)/(ax1(1)+ax1(2)+ax1(3))];
x2o = poly([0],'x2o');
x21 = roots(y1(1) - (Lm/Vm)*x2o + (y(2)/Vm)*xwo);
x2p = poly([0],'x2p');
x22 = roots(y1(3) - (Lm/Vm)*x2p + (y(2)/Vm)*xwp);
x2m = poly([0],'x2m');
x23 = roots(y1(2) - (Lm/Vm)*x2m + (y(2)/Vm)*xwm);
x2 = [x21 x23 x22];
printf("\n          plate compositions below the feed plate");
printf("\n Component             xs                axs               ys              x1              ax1              y1            x2");
printf("\n     o                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xso,ao*xso,yso,x1(1),ax1(1),y1(1),x2(1));
printf("\n     m                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xsm,am*xsm,ysm,x1(2),ax1(2),y1(2),x2(2));
printf("\n     p                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xsp,ap*xsp,ysp,x1(3),ax1(3),y1(3),x2(3));
printf("\n                            %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xso+xsm+xsp,ao*xso+am*xsm+ap*xsp,yso+ysm+ysp,x1(1)+x1(2)+x1(3),ax1(1)+ax1(2)+ax1(3),y1(1)+y1(2)+y1(3),x2(1)+x2(2)+x2(3));

ax2 = [ao*x2(1) am*x2(2) ap*x2(3)];
y2 = [ax2(1)/(ax2(1)+ax2(2)+ax2(3)) ax2(2)/(ax2(1)+ax2(2)+ax2(3)) ax2(3)/(ax2(1)+ax2(2)+ax2(3))];
x3o = poly([0],'x3o');
x31 = roots(yso - (Lm/Vm)*x3o + (y(2)/Vm)*xwo);
x3p = poly([0],'x3p');
x32 = roots(ysp - (Lm/Vm)*x3p + (y(2)/Vm)*xwp);
x3m = poly([0],'x3m');
x33 = roots(ysm - (Lm/Vm)*x3m + (y(2)/Vm)*xwm);
x3 = [x31 x33 x32];

ax3 = [ao*x3(1) am*x3(2) ap*x3(3)];
y3 = [ax3(1)/(ax3(1)+ax3(2)+ax3(3)) ax3(2)/(ax3(1)+ax3(2)+ax3(3)) ax3(3)/(ax3(1)+ax3(2)+ax3(3))];
x4o = poly([0],'x4o');
x41 = roots(yso - (Lm/Vm)*x4o + (y(2)/Vm)*xwo);
x4p = poly([0],'x4p');
x42 = roots(ysp - (Lm/Vm)*x4p + (y(2)/Vm)*xwp);
x4m = poly([0],'x4m');
x43 = roots(ysm - (Lm/Vm)*x4m + (y(2)/Vm)*xwm);
x4 = [x41 x43 x42];

ax4 = [ao*x4(1) am*x4(2) ap*x4(3)];
y4 = [ax4(1)/(ax4(1)+ax4(2)+ax4(3)) ax4(2)/(ax4(1)+ax4(2)+ax4(3)) ax4(3)/(ax4(1)+ax4(2)+ax4(3))];
x5o = poly([0],'x5o');
x51 = roots(yso - (Lm/Vm)*x5o + (y(2)/Vm)*xwo);
x5p = poly([0],'x5p');
x52 = roots(ysp - (Lm/Vm)*x5p + (y(2)/Vm)*xwp);
x5m = poly([0],'x5m');
x53 = roots(ysm - (Lm/Vm)*x5m + (y(2)/Vm)*xwm);
x5 = [x51 x53 x52];

ax5 = [ao*x5(1) am*x5(2) ap*x5(3)];
y5 = [ax5(1)/(ax5(1)+ax5(2)+ax5(3)) ax5(2)/(ax5(1)+ax5(2)+ax5(3)) ax5(3)/(ax5(1)+ax5(2)+ax5(3))];
x6o = poly([0],'x6o');
x61 = roots(yso - (Lm/Vm)*x6o + (y(2)/Vm)*xwo);
x6p = poly([0],'x6p');
x62 = roots(ysp - (Lm/Vm)*x6p + (y(2)/Vm)*xwp);
x6m = poly([0],'x6m');
x63 = roots(ysm - (Lm/Vm)*x6m + (y(2)/Vm)*xwm);
x6 = [x61 x63 x62];

ax6 = [ao*x6(1) am*x6(2) ap*x6(3)];
y6 = [ax6(1)/(ax6(1)+ax6(2)+ax6(3)) ax6(2)/(ax6(1)+ax6(2)+ax6(3)) ax6(3)/(ax6(1)+ax6(2)+ax6(3))];
x7o = poly([0],'x7o');
x71 = roots(yso - (Lm/Vm)*x7o + (y(2)/Vm)*xwo);
x7p = poly([0],'x7p');
x72 = roots(ysp - (Lm/Vm)*x7p + (y(2)/Vm)*xwp);
x7m = poly([0],'x7m');
x73 = roots(ysm - (Lm/Vm)*x7m + (y(2)/Vm)*xwm);
x7 = [x71 x73 x72];
printf("\n Component             ax2                y2               x3              ax3              y3              x4            ax4");
printf("\n     o                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",ax2(1),y2(1),x3(1),ax3(1),y3(1),x4(1),ax4(1));
printf("\n     m                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xsm,am*xsm,ysm,x1(2),ax1(2),y1(2),x2(2));
printf("\n     p                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",xsp,ap*xsp,ysp,x1(3),ax1(3),y1(3),x2(3));

printf("\n Component             y4                x5               ax5              y5              x6              ax6            y6");
printf("\n     o                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(1),x5(1),ax5(1),y5(1),x6(1),ax6(1),y6(1));
printf("\n     m                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(2),x5(2),ax5(2),y5(2),x6(2),ax6(2),y6(2));
printf("\n     p                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(3),x5(3),ax5(3),y5(3),x6(3),ax6(3),y6(3));


ax7 = [ao*x7(1) am*x7(2) ap*x7(3)];
y7 = [ax7(1)/(ax7(1)+ax7(2)+ax7(3)) ax7(2)/(ax7(1)+ax7(2)+ax7(3)) ax7(3)/(ax7(1)+ax7(2)+ax7(3))];
x8o = poly([0],'x8o');
x81 = roots(yso - (Ln/Vn)*x8o + (y(2)/Vn)*xwo);
x8p = poly([0],'x8p');
x82 = roots(ysp - (Ln/Vn)*x8p + (y(2)/Vn)*xwp);
x8m = poly([0],'x8m');
x83 = roots(ysm - (Ln/Vn)*x8m + (y(2)/Vn)*xwm);
x8 = [x81 x83 x82];

ax8 = [ao*x8(1) am*x8(2) ap*x8(3)];
y8 = [ax8(1)/(ax8(1)+ax8(2)+ax8(3)) ax8(2)/(ax8(1)+ax8(2)+ax8(3)) ax8(3)/(ax8(1)+ax8(2)+ax8(3))];
x9o = poly([0],'x9o');
x91 = roots(yso - (Ln/Vn)*x9o + (y(2)/Vn)*xwo);
x9p = poly([0],'x9p');
x92 = roots(ysp - (Ln/Vn)*x9p + (y(2)/Vn)*xwp);
x9m = poly([0],'x9m');
x93 = roots(ysm - (Ln/Vn)*x9m + (y(2)/Vn)*xwm);
x9 = [x91 x93 x92];

printf("\n Component             x7                ax7               y7              x8              ax8              y8            x9");
printf("\n     o                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",x7(1),ax7(1),y7(1),x8(1),ax8(1),y8(1),x9(1));
printf("\n     m                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",x7(2),ax7(2),y7(2),x8(2),ax8(2),y8(2),x9(2));
printf("\n     p                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",x7(3),ax7(3),y7(3),x8(3),ax8(3),y8(3),x9(3));

printf("\n Component             x7                ax7               y7              x8              ax8              y8            x9");
printf("\n     o                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(1),x5(1),ax5(1),y5(1),x6(1),ax6(1),y6(1));
printf("\n     m                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(2),x5(2),ax5(2),y5(2),x6(2),ax6(2),y6(2));
printf("\n     p                      %.3f           %.3f          %.3f       %.3f         %.3f        %.3f        %.3f",y4(3),x5(3),ax5(3),y5(3),x6(3),ax6(3),y6(3));



















