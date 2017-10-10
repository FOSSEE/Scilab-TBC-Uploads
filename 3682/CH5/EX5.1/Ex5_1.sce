// Exa 5.1

clc;
clear;

// Given data

// A comparator as shown in FIg. 5.7(a)
Aol=50000; // open loop gain of op-amp
Vz=9; // Volts
Vd=0.7; // cutoff voltage

// Solution

// case 1
printf(' Since AOL = ∞ , even a small positive or negative voltage at the input drives the output to +- Vsat. \n  This causes Vz1 or Vz2 to break down, giving output voltage vo = +-(Vz+Vd)= ');
Vsat = Vz+Vd;
printf(' %.1f V. \n  The same is shown in Graphic Window No. 0 \n', Vsat);
Vi= [-1:0.1:1];
for i=1:21
    if(Vi(i)<0)
         Vo(i)=-Vsat;
       elseif(Vi(i)==0)
            Vo(i)=Vsat;
        else
            Vo(i)=Vsat;
            
    end
    end
set(gca(),"grid",[1,1]);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 
plot2d2(Vi,Vo);
title('Transfer curve for ideal op-amp condition',"color","blue","fontsize",3);


// case 2

DellVi = Vsat/Aol; // Zener breaks down after +-Dell_Vi
scf(1);
Vi= [-1:0.1:1];
for i=1:21
    if(Vi(i)<0)
         Vo(i)=-Vsat;
       elseif(Vi(i)==0)
            Vo(i)=DellVi;
        else
            Vo(i)=Vsat;
            
    end
end
set(gca(),"grid",[1,1]);
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";
plot(Vi,Vo,'ro-');
title('Transfer curve for practical op-amp condition',"color","blue","fontsize",3);

printf(' \n\n  Now since, ∇Vi = %.3f mV. The zeners break down after +- %.3f mV \n  as shown in the transfer curve depicted in Graphic Windows No. 1',DellVi*1000,DellVi*1000);
