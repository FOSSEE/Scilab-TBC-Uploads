clc;
//Example 3.2
//Page no 96


//Solution

fn=200*(10^3);
fi=210*(10^3);
Kd=0.2;
Kf=1;
Ka=5;
Ko=20;

//(a)

disp("(a)From equation 3-20 and 3-21 (refer pgno 95), we get ");

Kl=Kd*Kf*Ka*Ko;

disp('kHz/rad',Kl,"Kl = ");

Kv=2*(%pi)*(Kl*(10^3));

disp('rad/s',Kv,"Kv = ");

KV=20*log10(Kv);

disp('dB',round(KV),"Kv(dB) = ");

//(b)

dF=fi-fn;

disp('kHz',(dF/(10^3)),"(b)dF = ");

//(c)

disp("(c)Rearranging equation 3-15 (refer pgno 89) gives us ");

Vo=((dF/(10^3))/Ko);

disp('V',Vo,"Vout = ");

Vd=(Vo/(Kf*Ka));

disp('V',Vd,"Vd = ");

//(d)

disp("(d)Rearranging equation 3-18 (refer pgno 94) gives us ");

the=(Vd/Kd);

disp('rad',the,"THe = ");
