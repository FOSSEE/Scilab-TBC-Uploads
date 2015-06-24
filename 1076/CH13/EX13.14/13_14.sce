clear
clc
clf

Sb = 50;
S=50;
V =1;
Xd = 0.2; 
X1 =0.4; 
X2 = 0.4;
H = 2.7;
E=1.05 ;
G=1;

M = G*H/(180*50);

pe0 = (E*V/X1);
d0=asind(S/(Sb*pe0 ));
Pe0=pe0 * sind(d0);

pe1 = (E*V/(X1+X2+Xd));

pe2 = (E*V/(X1+Xd));

dt=.05
c_1=dt*dt/M

for i=1:14
    if i==1 then 
        m_t(i)=0;
        m_Pm(i)=Pe0
        m_sind(i)=sind(d0)
        m_Pe(i)=S/Sb
        m_Pa(i)=0
        m_cPe(i)=c_1 * m_Pa(i)
        m_dd(i)=0
        m_d(i)=d0
    else if i==2 then 
        m_t(i)=0;
        m_Pm(i)=pe1
        m_d(i)=d0
        m_sind(i)=sind(m_d(i))
        m_Pe(i)=m_sind(i)*m_Pm(i)
        m_Pa(i)=(1 - m_Pe(i) + m_Pa(i-1))/2
        m_cPe(i)=c_1 * m_Pa(i)
        m_dd(i)=0
    else
        m_t(i)=m_t(i-1) +dt;
        m_Pm(i)=pe1
        m_dd(i)=m_dd(i-1) + m_cPe(i-1)
        m_d(i)=m_d(i-1)+m_dd(i)
        m_sind(i)=sind(m_d(i))
        m_Pe(i)=m_Pm(i) * m_sind(i)
        m_Pa(i)=(1 - m_Pe(i))
        m_cPe(i)=c_1 * m_Pa(i)
    end
    end
    
end
res1(:,1)=m_t(:)
res1(:,2)=m_Pm(:)
res1(:,3)=m_sind(:)
res1(:,4)=m_Pe(:)
res1(:,5)=m_Pa(:)
res1(:,6)=m_cPe(:)
res1(:,7)=m_dd(:)
res1(:,8)=m_d(:)
res1=round(res1*1000)/1000
i=1
head=['' '' 't'  '' '' 'Pm'  '' '' 'sin d'  '' '' 'Pe'  '' '''Pa'  '' '''8.33Pa'  '' '''d delta' 'delta']
disp(res1, head, "(a)")
plot(m_t, m_d)
title('Swing Curve(Blue: Sustained fault; Red: Fault cleared in .1 sec)');
xlabel('seconds');
ylabel('degrees');


//(b)
while i<15
    if i==1 then 
        m_t2(i)=0;
        m_Pm2(i)=Pe0
        m_sind2(i)=sind(d0)
        m_Pe2(i)=S/Sb
        m_Pa2(i)=0
        m_cPe2(i)=c_1 * m_Pa2(i)
        m_dd2(i)=0
        m_d2(i)=d0
    else if i==2 then 
            m_t2(i)=0;
            m_Pm2(i)=pe1
            m_d2(i)=d0
            m_sind2(i)=sind(m_d2(i))
            m_Pe2(i)=m_sind2(i)*m_Pm2(i)
            m_Pa2(i)=(1 - m_Pe2(i) + m_Pa2(i-1))/2
            m_cPe2(i)=c_1 * m_Pa2(i)
            m_dd2(i)=0
        else 
            m_t2(i)=m_t2(i-1) +dt;
            if m_t2(i) == .1 then
                m_Pm2(i)=pe1
                m_dd2(i)=m_dd2(i-1) + m_cPe2(i-1)
                m_d2(i)=m_d2(i-1)+m_dd2(i)
                m_sind2(i)=sind(m_d2(i))
                m_Pe2(i)=m_Pm2(i) * m_sind2(i)
                m_Pa2(i)=(1 - m_Pe2(i))
                m_cPe2(i)=c_1 * m_Pa2(i)
                
                i=i+1
                m_t2(i)=m_t2(i-1)
                m_Pm2(i)=pe2
                m_dd2(i)=m_dd2(i-1)
                m_d2(i)=m_d2(i-1)
                m_sind2(i)=sind(m_d2(i))
                m_Pe2(i)=m_Pm2(i) * m_sind2(i)
                m_Pa2(i)=(1 - m_Pe2(i) + m_Pa2(i-1))/2
                m_cPe2(i)=c_1 * m_Pa2(i)
            else 
                m_Pm2(i)=m_Pm2(i-1)
                m_dd2(i)=m_dd2(i-1) + m_cPe2(i-1)
                m_d2(i)=m_d2(i-1)+m_dd2(i)
                m_sind2(i)=sind(m_d2(i))
                m_Pe2(i)=m_Pm2(i) * m_sind2(i)
                m_Pa2(i)=(1 - m_Pe2(i))
                m_cPe2(i)=c_1 * m_Pa2(i)
            end
        end
    end
    i=i+1
end
res2(:,1)=m_t2(:)
res2(:,2)=m_Pm2(:)
res2(:,3)=m_sind2(:)
res2(:,4)=m_Pe2(:)
res2(:,5)=m_Pa2(:)
res2(:,6)=m_cPe2(:)
res2(:,7)=m_dd2(:)
res2(:,8)=m_d2(:)
res2=round(res2*1000)/1000
disp(res2,head, "(b)")

plot(m_t2, m_d2,'r')
//(c)
D0=d0 * %pi/180
Pi=1
Dm=%pi -  asin(Pi/pe2)

dcc=acosd(((Pi * (Dm-D0))-(pe1*cos(D0))+(pe2*cos(Dm)))/(pe2 -pe1))
tcc=.395
mprintf("\n\n(c) dcc= %.1f deg; clearing time=%.3f sec", dcc,tcc)
