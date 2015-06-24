clear
clc;
disp("L.H.S = xy+x^y^+yz");
disp("R.H.S = xy+x^y^+x^z");
disp("Based on consensus theorem")
disp("we can write x^y^+yz as x^y^+yz+x^z bcoz the two expressions are equal");
disp("(x^y^+yz+x^z(y+y^))=x^y^+yz+x^yz+x^y^z");
disp("x^y^+yz+x^yz+x^y^z=x^y^(1+z)+yz(1+x^)");
disp("x^y^+yz=x^y^+yz+x^z");
disp("so L.H.S=xy+x^y^+yz=xy+x^y^+yz+x^z");
disp("In the similar way xy+yz+x^z can be simplified as xy+x^z");
disp("so L.H.S becomes xy+x^z+x^y^");
disp("thus L.H.S= R.H.S");
disp("hence proved")