//Chapter 26
clc
//Example 9
//given
m_n=1.008665 //mass of neutron in amu
m_U=235.043924 //atomic mass of uranium in amu
m_Ba=140.903496 //atomic mass of barium in amu
m_Kr=91.907720 //atomic mass of krypton in amu
c=3*10^8 // velocity of light in m/s
//a) Kinetic energy released in fission of uranium
KE_final_=((m_n+m_U)-(m_Ba+m_Kr+(3*m_n)))*c^2
//1 amu = 931.494 Mev/c^2
KE_final=KE_final_*931.494/c^2
disp(KE_final,"a) Kinetic energy released in fission in Mev is")
//b) velocities of barium and krypton
//E=mc2/sqrt(1-v2/c2)
KE_Ba=KE_final
m_Ba_=m_Ba*931.494/c^2 // mass of barium in Mev
E_Ba=KE_Ba+m_Ba_*c^2
V_Ba=(sqrt(1-(((m_Ba_*c^2)^2)/E_Ba^2)))*c
disp(V_Ba,"Speed of Barium fragment in Mev is")
KE_Kr=KE_final
m_Kr_=m_Kr*931.494/c^2 // mass of krypton in Mev
E_Kr=KE_Kr+m_Kr_*c^2
V_Kr=(sqrt(1-((m_Kr_*c^2)^2)/E_Kr^2))*c
disp(V_Kr," Speed of krypton fragment in Mev is")
//The difference in answer is because of round off

