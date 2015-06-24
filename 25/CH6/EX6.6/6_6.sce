// example:-6.6,page no.-307.
// program to evaluate the worst case percent error in computing magnitude of reflection coefficient.
Z1=100;Z2=150;Zl=225;
tao_1=(Z2-Z1)/(Z2+Z1);
tao_2=(Zl-Z2)/(Zl+Z2);
tao_exact=(tao_1+tao_2)/(1+tao_1*tao_2); // this results as angle is taken zero.
tao_approx=tao_1+tao_2;  // this results as angle is taken zero.
eror=abs(((tao_exact-tao_approx)/tao_exact)*100);
disp(tao_approx,'approximate value of reflection coefficient is = ')
disp(eror,'the error in percent is about = ')