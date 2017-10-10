clear;
clc;
Zb=complex(0,.20);
Z1b=complex(0,.25);
V1=Z1b;

Z2b=[Z1b 0;0 Z1b];
//p=2,q=3
Zbn=complex(0,.10);
Z22=complex(0,.25);
Z33=Z22+Zbn;
Z13=complex(0,0);
Z31=Z13;
Z32=complex(0,.25);
Z23=Z32;

Z2bn=[Z1b 0 Z13;0 Z22 Z23;Z31 Z32 Z33];
//p=1,q=4
Z44=Z1b+Zb;
Z14=complex(0,.25);
Z41=Z14;
Z24=complex(0,0);
Z42=complex(0,0);
Z34=complex(0,0);
Z43=Z34;
Z4b=[Z1b 0 Z13 Z14;0 Z22 Z23 Z24;Z31 Z32 Z33 Z34;Z41 Z42 Z43 Z44];
//p=3,q=4
Zbb=complex(0,.3);
y=1/((Zbb+Z33)-(2*Z34)+Z44);
Z=[Z13-Z14;Z23-Z24;Z33-Z34;Z43-Z44];
Z5b=Z4b-((-y)*Z*(Z'));
//p=0,q=3
y1=1/(Zbn+Z5b(3,3));
ZZ=[-Z5b(1,3);-Z5b(2,3);-Z5b(3,3);-Z5b(4,3)];
Z6b=Z5b-((-y1)*ZZ*(ZZ'));
mprintf("Z1b = \n");
disp(Z1b);
mprintf("Z2b = \n");
disp(Z2bn);

mprintf("Z4b = \n");
disp(Z4b);
mprintf("Z5b = \n");
disp(Z5b);
mprintf("Z6b = \n");
disp(Z6b);






