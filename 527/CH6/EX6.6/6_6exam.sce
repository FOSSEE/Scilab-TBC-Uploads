//Engineering and Chemical Thermodynamics
//Example 6.6
//Page no :277

clear ; clc ;
//Given 
MW1 = 119.5 ;
MW2 = 58 ;
A = [0,4.77,9.83,14.31,19.38,23.27,25.53,25.07,21.55,13.56,0] ;
B = [0,.1 , .2 , .3 ,.4 ,.5 ,.6 ,.7 ,.8 ,.9,1] ;

disp(" Example: 6.6   Page no : 277") ;
for i = 1:11
    
    x1 = (B(1,i) / MW1) / (B(1,i) / MW1 + (1 - B(1,i)) / MW2) ;
    x2 = 1 - x1 ;
    MW = x1 * MW1 + x2 * MW2 ;
    del_h_mix = - 1*(A(1,i)) * MW ;
    C(1,i) = del_h_mix ;
    D(1,i) = x1 ;
   
    printf("\n    For weight percent  %.3f    del_h_mix = %.1f J/mol\n",x1,del_h_mix)
end

xdata = D ;
ydata = C ;
plot(xdata ,ydata) ;
xtitle("Figure E6.6B","x_CHCl3","Del_h_mix  (J/mol)") ;
