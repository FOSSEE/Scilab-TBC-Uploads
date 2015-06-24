//CHAPTER 7_ Flow Measurement
//Caption : Venturi
// Example 7// Page 446
p1=5*10^6    //('entering the pressure of air when venturi is to be used =:')
t1=298    //('entering the temperature of air for the same=:')
m_max=1    //('entering the maximum flow rate=:')
m_min=0.3   //('entering the minimum flow rate=:')
Re_min=10^5   //('entering the throats reynold number=:')
R=287;   // for air
pho1=p1/(R*t1);
b=0.5;
mu=1.8462*10^-5   //('enter the absolute viscosity=:')
D_max=(4*m_max)/(%pi*Re_min*mu);
D_min=(4*m_min)/(%pi*Re_min*mu);
printf('So the throat diameters for maximum and minimum flows so the reynolds number does not exceed 10^5 are %1.4f m and %1.4f m respectively\n',D_max,D_min)
// To calculate the differential pressure
At=%pi*D_max^2/4;
C=1;    // discharge coefficient
M=1.0328;    // Velocity approach coefficient
Y=.9912;   // Expansion factor
dP_max=(m_max)^2/(Y^2*M^2*C^2*At^2*2*pho1);
printf('The differential pressure for maximum flow rate is %1.5f Pa\n',dP_max)
dP_min=(m_min)^2/(Y^2*M^2*C^2*At^2*2*pho1)*1000;
printf('The differential pressure for minimum flow rate is %1.2f mPa\n',dP_min)

