//Example 15.3
Q_h=2.5*10^14;//Heat transfer from coal (J)
Q_c=1.48*10^14;//Heat transfer into the environment (J)
W=Q_h-Q_c;//Work done (J)
printf('a.Work done by the power station = %0.2e J',W)
Eff=W/Q_h;//Efficiency
printf('\nb.Efficiency of the power station = %0.3f or %0.1f%%',Eff,Eff*100)
q=2.5*10^6;//Heat transfer per kg of coal (J/kg)
m_coal=Q_h/q;//Mass of coal consumed per day (kg)
//If 12kg of coal results in the production of 44kg of CO2
m_CO2=m_coal*44/12;//Amount of CO2 produced daily (kg)
printf('\nc.Amount of CO2 produced daily = %0.1e kg or %0.1f metric tons',m_CO2,m_CO2/1000)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
