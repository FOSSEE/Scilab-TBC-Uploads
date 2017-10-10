clear
// Variable declaration
n=2// The number of two pellet truck doors
m_n=300//The number of traffic movements per day
t=30// seconds

// Calculation
T=n*m_n*t// The time for the door openings seconds per day 
A=2.2*3.2// The cross sectional area in m**2
v=1// m/s
I=A*T*v// The air infiltration in m**3/d
V=50*70*10// The store volume in m**3
R=I/V// The rate of air change per day
printf("\n \nThe store volume is %5.0f m**3. \nThe rate of air change is %1.1f per day.",V,R)

