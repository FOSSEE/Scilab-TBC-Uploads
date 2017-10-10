clear;
clc;
Ybusa=zeros(4,4);
Ybusb=zeros(4,4);
Ybusa(1,1)=1/(complex(0,4))+1/(complex(0,.8))+1/(complex(0,.5))+1/(complex(0,.4));
Ybusa(1,2)=-1/(complex(0,.8));
Ybusa(2,1)=Ybusa(1,2);
Ybusa(1,3)=-1/(complex(0,.5));
Ybusa(3,1)=Ybusa(1,3);
Ybusa(1,4)=-1/(complex(0,.4));
Ybusa(4,1)=Ybusa(1,4);
Ybusa(2,2)=1/(complex(0,.8));
Ybusa(3,3)=1/(complex(0,.5))+1/(complex(0,.1));
Ybusa(3,4)=-1/(complex(0,.1));
Ybusa(4,3)=Ybusa(3,4);
Ybusa(4,4)=1/(complex(0,.1))+1/(complex(0,.4));
Ybusb(1,1)=1/(complex(0,.2))+1/(complex(0,.4));
Ybusb(1,2)=-1/(complex(0,.2));
Ybusb(2,1)=Ybusb(1,2);
Ybusb(2,3)=-1/(complex(0,.5));
Ybusb(3,2)=Ybusb(2,3);
Ybusb(1,4)=-1/(complex(0,.4));
Ybusb(4,1)=Ybusb(1,4);
Ybusb(2,2)=1/(complex(0,.2))+1/(complex(0,.5));
Ybusb(3,3)=1/(complex(0,5))+1/(complex(0,.5))+1/(complex(0,.25));
Ybusb(3,4)=-1/(complex(0,.25));
Ybusb(4,3)=Ybusb(3,4);
Ybusb(4,4)=1/(complex(0,.25))+1/(complex(0,.4));
Zbusa=inv(Ybusa);
Zbusb=inv(Ybusb);

Zbusa(1,:)=[];
Zbusa(:,1)=[];
Zbusb(4,:)=[];
Zbusb(:,4)=[];
Zbusb(3,:)=[];
Zbusb(:,3)=[];

AA=[1 0 0;1 0 0;0 0 1];
Zbounda=AA*Zbusa*AA';
AB=[-1 0;0 -1;0 -1];
Zboundb=AB*Zbusb*AB';
Ztie=[complex(0,.1) 0 0;0 complex(0,.2) 0; 0 0 complex(0,.3)];
Z=Zbounda+Ztie+Zboundb;
Va=[complex(1,0); complex(1.0086,-.0529); complex(.9794,-.0342);complex(.999,-.0436)];
Vb=[complex(.994,-0.0349); complex(1.0047,-.0263); complex(1,0);complex(.9898,.0173)];
Vdiff=[Va(2)-Vb(1);Va(2)-Vb(2);Va(4)-Vb(2)];
Itie=inv(Z)*Vdiff;
Abusa=[0 1 0 0;0 1 0 0;0 0 0 1];
Vadash=Va-inv(Ybusa)*Abusa'*(-Itie);
Abusb=[ -1 0 0 0;0 -1 0 0;0 -1 0 0];
Vbdash=Vb-inv(Ybusb)*Abusb'*(-Itie);
mprintf("Bus voltages of A power system are");
disp(Vadash);
mprintf("Bus voltages of B power system are");
disp(Vbdash);





