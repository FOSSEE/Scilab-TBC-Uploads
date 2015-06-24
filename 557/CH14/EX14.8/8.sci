clc; funcprot(0);//Example 14.8 
 
//Initializing the variables
d = [0.3 0.25 0.2];
l = [1500 800 400];
f = 0.01;
Ha = 60;
Hb = 30;
Hc = 15;
Hd = 35; // Assumption
H(1) = Ha - Hd;
H(2) = Hb - Hd;
H(3) = Hc - Hd;

//Calculations
K = 0;
for(i=1:length(d))
    K(i) = f*l(i)/(3*d(i)^5);
end
Qsum = 0.001;
for(i=1:2)
    Q = 0;Qby2h = 0;Qs = 0;Qby2hsum = 0;
    for(i=1:3)
        if(imag(sqrt(H(i)/K(i)))~=0) then
            Q(i) = -1*abs(imag(sqrt(H(i)/K(i))));
        else
            Q(i) = sqrt(H(i)/K(i));
        end,
        
        Qby2h = Q(i)/(2*H(i));
        Qs = Qs+Q(i);
       Qby2hsum = Qby2hsum +Qby2h
      
    end
    dH = Qs/Qby2hsum;
    for(i=1:3)
        H(i)=H(i)+dH;
    end
    Qsum = Qs;
end

disp(Q(3),"Q_dc (m3/s) :",Q(2),"Q_db (m3/s) :",Q(1),"Q_ad (m3/s) :");
